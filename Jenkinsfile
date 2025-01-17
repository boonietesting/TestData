pipeline {
    agent any
    stages {
        stage('Run Script') {
            steps {
                bat """
                @echo off
                set API_URL=https://partner.testinsights.io/api/apikey/8521zuCiKz_VCaVlzHZBEgM3K/job
                set PAYLOAD={
                    "jobType": "VIPAutoExecutionJob",
                    "projectId": 100171,
                    "vipAutomationJobSettings": {
                        "testSuiteId": null,
                        "testPaths": null,
                        "machineKey": "BIGONE",
                        "serverProfileId": 8,
                        "serverProcessId": 26414,
                        "automationType": "FunctionMask",
                        "scope": "Global",
                        "automationParameters": [
                            {"var": "parActivityVersionID", "paramIndex": 1, "value": "2133"},
                            {"var": "parConnectionID", "paramIndex": 2, "value": "375"},
                            {"var": "parCreateAudit", "paramIndex": 3, "value": "false"},
                            {"var": "parBatchesToAudit", "paramIndex": 4, "value": "1"},
                            {"var": "parValidateOnly", "paramIndex": 5, "value": "false"},
                            {"var": "parExportData", "paramIndex": 6, "value": "false"},
                            {"var": "parLoadFromCSV", "paramIndex": 7, "value": "false"},
                            {"var": "parTargetConnectionID", "paramIndex": 8, "value": "375"},
                            {"var": "parTargetDatabaseMappings", "paramIndex": 9, "value": ""},
                            {"var": "parTargetSchemaMappings", "paramIndex": 10, "value": ""}
                        ],
                        "sharedJobServer": false
                    }
                }

                curl -s -o C:\\tmp\\api_response.json -w "%{http_code}" ^
                -X POST "%API_URL%" ^
                -H "Content-Type: application/json" ^
                -d "%PAYLOAD%"
                if %errorlevel% neq 0 (
                    echo "API call failed"
                    exit /b 1
                )
                """
            }
        }
    }
}
