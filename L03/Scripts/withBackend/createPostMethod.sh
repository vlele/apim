
# Please make sure that you are logged in using `az login`.
# Generic Information
# ---> I am using the KNC subs deployed APIM resource group and Instance
resourceGroupName="api-ops"
serviceName="apim-lab-d-eus2-001"

# API related information
apiId="echoAPI01"

# API POST Method/Operation related information
postOperationPath="/post" # what operation you are performing
postOperationDisplayName="Post Employee Data" # what to use as a displayname for this API request
postOperationDescription="Posts the List of Employee Data"


# create the Operation "POST"
az apim api operation create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --url-template $postOperationPath --method "POST" --display-name $postOperationDisplayName --description $postOperationDescription



