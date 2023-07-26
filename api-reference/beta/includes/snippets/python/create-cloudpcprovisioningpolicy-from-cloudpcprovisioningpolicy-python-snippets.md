---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CloudPcProvisioningPolicy()
request_body.@odata_type = '#microsoft.graph.cloudPcProvisioningPolicy'

request_body.description = 'Description value'

request_body.display_name = 'Display Name value'

domain_join_configuration = CloudPcDomainJoinConfiguration()
domain_join_configuration.on_premises_connection_id = '16ee6c71-fc10-438b-88ac-daa1ccafffff'

additional_data = [
'domain_join_type' => 'hybridAzureADJoin', 
];
domain_join_configuration.additional_data(additional_data)



request_body.domain_join_configuration = domain_join_configuration
domain_join_configurations_cloud_pc_domain_join_configuration1 = CloudPcDomainJoinConfiguration()
domain_join_configurations_cloud_pc_domain_join_configuration1.on_premises_connection_id = '16ee6c71-fc10-438b-88ac-daa1ccafffff'

domain_join_configurations_cloud_pc_domain_join_configuration1.type(CloudPcDomainJoinType.HybridAzureADJoin('cloudpcdomainjointype.hybridazureadjoin'))


domainJoinConfigurationsArray []= domainJoinConfigurationsCloudPcDomainJoinConfiguration1;
domain_join_configurations_cloud_pc_domain_join_configuration2 = CloudPcDomainJoinConfiguration()
domain_join_configurations_cloud_pc_domain_join_configuration2.on_premises_connection_id = '26e16c71-f210-438b-88ac-d481ccafffff'

domain_join_configurations_cloud_pc_domain_join_configuration2.type(CloudPcDomainJoinType.HybridAzureADJoin('cloudpcdomainjointype.hybridazureadjoin'))


domainJoinConfigurationsArray []= domainJoinConfigurationsCloudPcDomainJoinConfiguration2;
request_body.domainjoinconfigurations(domainJoinConfigurationsArray)


request_body.id = '1d164206-bf41-4fd2-8424-a3192d39ffff'

request_body.enable_single_sign_on = True

request_body.image_display_name = 'Windows-10 19h1-evd'

request_body.image_id = 'MicrosoftWindowsDesktop_Windows-10_19h1-evd'

request_body.imagetype(CloudPcProvisioningPolicyImageType.Gallery('cloudpcprovisioningpolicyimagetype.gallery'))

request_body.on_premises_connection_id = '4e47d0f6-6f77-44f0-8893-c0fe1701ffff'

windows_settings = CloudPcWindowsSettings()
windows_settings.language = 'en-US'


request_body.windows_settings = windows_settings
request_body.provisioningtype(CloudPcProvisioningType.Dedicated('cloudpcprovisioningtype.dedicated'))




result = await client.device_management.virtual_endpoint.provisioning_policies.post(request_body = request_body)


```