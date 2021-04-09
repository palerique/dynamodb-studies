/*
* Copyright 2010-2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

const LAMBDA_ROLE_ARN_STR = "arn:aws:iam::799098231639:role/login-for-dragons-role";


const AWS = require("aws-sdk"),
    FS = require("fs"),
    LAMBDA = new AWS.Lambda({
        apiVersion: "2015-03-31",
        region: "us-east-1"
    });

function createLambdaFunction(zip_bin) {
    const params = {
        Code: {
            ZipFile: new Buffer(zip_bin)
        },
        Description: "Login functionality",
        FunctionName: "LoginEdXDragonGame",
        Handler: "login.handler",
        MemorySize: 128,
        Publish: true,
        Role: LAMBDA_ROLE_ARN_STR,
        Runtime: "nodejs14.x",
        Timeout: 30
    };
    return LAMBDA.createFunction(params).promise();
}

(async function init() {
    const file_path_str = "/Users/ph/area-de-trabalho/POCs/dynamodb-poc/lab5/",
        file_name_str = "login.zip",
        zip_bin = FS.readFileSync(file_path_str + file_name_str);
    console.log(await createLambdaFunction(zip_bin));
})();
