
# Please make sure that you are logged in using `az login`.
# Generic Information
# ---> I am using the KNC subs deployed APIM resource group and Instance
resourceGroupName="api-ops"
serviceName="apim-lab-d-eus2-001"

# API related information
apiId="echoAPI01"

# API GET Method/Operation related information
getOperationPath="/get" # what operation you are performing
getOperationDisplayName="Get Employee Data" # what to use as a displayname for this API request
getOperationDescription="Gets the List of Employee Data"


# create the Operation "GET"
az apim api operation create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --url-template $getOperationPath --method "GET" --display-name $getOperationDisplayName --description $getOperationDescription



