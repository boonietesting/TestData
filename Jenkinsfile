pipeline {
    agent any
    stages {
        stage('Run Script') {
            steps {
                bat """
                set API_URL=https://partner.testinsights.io/api/apikey/8521zuCiKz_VCaVlzHZBEgM3K/job
                curl -X POST %API_URL% ^
                     -H "Content-Type: application/json" ^
                     -d @payload.json
                if %errorlevel% neq 0 (
                    echo "API call failed"
                    exit /b 1
                )
                """
            }
        }
    }
}
