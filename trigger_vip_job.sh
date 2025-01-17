#!/bin/bash

# Variables for the API endpoint and API key
API_URL="https://partner.testinsights.io/api/apikey/8521zuCiKz_VCaVlzHZBEgM3K/job"

# JSON payload for the POST request
read -r -d '' PAYLOAD << EOF
{
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
EOF

# Execute the API call using curl
response=$(curl -s -o /tmp/api_response.json -w "%{http_code}" \
    -X POST "$API_URL" \
    -H "Content-Type: application/json" \
    -d "$PAYLOAD")

# Check the HTTP response code
if [ "$response" -eq 200 ]; then
    echo "API call successful. Response saved to /tmp/api_response.json."
else
    echo "API call failed with status code: $response"
    echo "Response:"
    cat /tmp/api_response.json
    exit 1
fi
