package transform_join

j1 := {
  "Fn::Join": [
    "",
    [
      "arn:",
      {"Ref": "AWS::Partition"},
      ":apigateway:us-east-1:lambda:path/2015-03-31/functions/",
      {"Fn::ImportValue": "Application:ExportsOutputFnGetAttappLambdaFunctionC3D7958CArn3959DA54"},
      "/invocations",
    ],
  ]
}

replace_fn_import_value(value) = import_value_replace {
  value["Fn::ImportValue"]
  import_value_replace := "${ImportValueReplace}"
} 

replace_fn_import_value(value) = import_value_replace {
  not value["Fn::ImportValue"]
  import_value_replace := value
}

replace_join(join) = transformed_join {
  join["Fn::Join"]
  is_array(join["Fn::Join"])
  count(join["Fn::Join"]) == 2
  separator := join["Fn::Join"][0]
  payload := join["Fn::Join"][1]
  is_array(join["Fn::Join"][1])
  transformed_payload := [ transformed_item |
    some index
    item := join["Fn::Join"][1][index]
    transformed_item := replace_fn_import_value(item)
  ]
  transformed_join := {
    "Fn::Join": [
      separator,
      transformed_payload
    ]
  }
}

r1 := replace_join(j1)

rcount := count(j1["Fn::Join"])
r_is_arrray := is_array(j1["Fn::Join"][1])
