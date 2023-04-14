
# Please make sure that you are logged in using `az login`.
# Generic Information
$resourceGroupName = "apim"
$serviceName = "apim01"

# API related information
$apiId="echoAPI"
$apiDisplayName="Postman Echo API"
$apiPath="/postmanecho"
$webServiceURL="https://postman-echo.com"

# API GET Method/Operation related information
$getOperationPath="/get" # what operation you are performing
$getOperationDisplayName="Get Employee Data" # what to use as a displayname for this API request
$getOperationDescription="Gets the List of Employee Data"

# API POST Method/Operation related information
$postOperationPath="/post" # what operation you are performing
$postOperationDisplayName="Post Employee Data" # what to use as a displayname for this API request
$postOperationDescription="Posts the List of Employee Data"


# create the API
az apim api create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --path $apiPath --display-name $apiDisplayName --service-url $webServiceURL

# create the Operation "GET"
az apim api operation create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --url-template $getOperationPath --method "GET" --display-name $getOperationDisplayName --description $getOperationDescription

# create the Operation "POST"
az apim api operation create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --url-template $postOperationPath --method "POST" --display-name $postOperationDisplayName --description $postOperationDescription

# delete the API
# az apim api delete --api-id $apiId --resource-group $resourceGroupName --service-name $serviceName