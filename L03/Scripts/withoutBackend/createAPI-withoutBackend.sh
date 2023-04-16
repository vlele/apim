
# Please make sure that you are logged in using `az login`.
# Generic Information
# ---> I am using the KNC subs deployed APIM resource group and Instance
resourceGroupName="api-ops"
serviceName="apim-lab-d-eus2-001"

# API related information
apiId="echoAPI01"
apiDisplayName="Postman Echo API WITH BACKEND"
apiPath="/postmanecho02"



# create the API without Backend
az apim api create --service-name $serviceName  -g $resourceGroupName --api-id $apiId --path $apiPath --display-name $apiDisplayName 




