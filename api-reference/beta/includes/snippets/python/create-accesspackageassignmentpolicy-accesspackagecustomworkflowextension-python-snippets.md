---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessPackageAssignmentPolicy()
request_body.display_name = 'extension-policy'

request_body.description = 'test'

request_body.access_package_id = 'ba5807c7-2aa9-4c8a-907e-4a17ee587500'

request_body.can_extend = False

request_body.requestApprovalSettings=null

requestor_settings = RequestorSettings()
requestor_settings.accept_requests = True

requestor_settings.scope_type = 'AllExistingDirectorySubjects'

requestor_settings.AllowedRequestors([])

additional_data = [
'is_on_behalf_allowed' => false,
];
requestor_settings.additional_data(additional_data)



request_body.requestor_settings = requestor_settings
request_body.accessReviewSettings=null

request_body.Questions([])

custom_extension_stage_settings_custom_extension_stage_setting1 = CustomExtensionStageSetting()
custom_extension_stage_settings_custom_extension_stage_setting1.stage(AccessPackageCustomExtensionStage.AssignmentRequestCreated('accesspackagecustomextensionstage.assignmentrequestcreated'))

custom_extension_stage_settings_custom_extension_stage_setting1custom_extension = CustomCalloutExtension()
custom_extension_stage_settings_custom_extension_stage_setting1custom_extension.id = '219f57b6-7983-45a1-be01-2c228b7a43f8'


custom_extension_stage_settings_custom_extension_stage_setting1.custom_extension = custom_extension_stage_settings_custom_extension_stage_setting1custom_extension

customExtensionStageSettingsArray []= customExtensionStageSettingsCustomExtensionStageSetting1;
custom_extension_stage_settings_custom_extension_stage_setting2 = CustomExtensionStageSetting()
custom_extension_stage_settings_custom_extension_stage_setting2.stage(AccessPackageCustomExtensionStage.AssignmentRequestGranted('accesspackagecustomextensionstage.assignmentrequestgranted'))

custom_extension_stage_settings_custom_extension_stage_setting2custom_extension = CustomCalloutExtension()
custom_extension_stage_settings_custom_extension_stage_setting2custom_extension.id = '219f57b6-7983-45a1-be01-2c228b7a43f8'


custom_extension_stage_settings_custom_extension_stage_setting2.custom_extension = custom_extension_stage_settings_custom_extension_stage_setting2custom_extension

customExtensionStageSettingsArray []= customExtensionStageSettingsCustomExtensionStageSetting2;
request_body.customextensionstagesettings(customExtensionStageSettingsArray)


additional_data = [
'expiration' => request_body = Expiration()
request_body.type = 'afterDuration'

request_body.duration = 'P365D'


request_body.expiration = expiration

];
request_body.additional_data(additional_data)





result = await client.identity_governance.entitlement_management.acces_package_assignment_policies.post(request_body = request_body)


```