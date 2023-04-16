
# Please make sure that you are logged in using `az login`.
# Generic Information
# ---> I am using the KNC subs deployed APIM resource group and Instance
resourceGroupName="api-ops"
serviceName="apim-lab-d-eus2-001"

# API related information
apiId="echoAPI02"


# delete the API

# NOTE: Make sure to provide the apiId of the API which you want to delete
az apim api delete --api-id $apiId --resource-group $resourceGroupName --service-name $serviceName

