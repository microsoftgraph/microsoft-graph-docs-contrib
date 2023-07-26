---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagementPartner()
request_body.@odata_type = '#microsoft.graph.deviceManagementPartner'

request_body.lastHeartbeatDateTime = DateTime('2016-12-31T23:59:37.9174975-08:00')

request_body.partnerstate(DeviceManagementPartnerTenantState.Unavailable('devicemanagementpartnertenantstate.unavailable'))

request_body.partnerapptype(DeviceManagementPartnerAppType.SingleTenantApp('devicemanagementpartnerapptype.singletenantapp'))

request_body.single_tenant_app_id = 'Single Tenant App Id value'

request_body.display_name = 'Display Name value'

request_body.is_configured = True

request_body.whenPartnerDevicesWillBeRemovedDateTime = DateTime('2016-12-31T23:56:38.2655023-08:00')

request_body.whenPartnerDevicesWillBeMarkedAsNonCompliantDateTime = DateTime('2016-12-31T23:58:42.2131231-08:00')

groups_requiring_partner_enrollment_device_management_partner_assignment1 = DeviceManagementPartnerAssignment()
groups_requiring_partner_enrollment_device_management_partner_assignment1.@odata_type = 'microsoft.graph.deviceManagementPartnerAssignment'

groups_requiring_partner_enrollment_device_management_partner_assignment1target = ConfigurationManagerCollectionAssignmentTarget()
groups_requiring_partner_enrollment_device_management_partner_assignment1target.@odata_type = 'microsoft.graph.configurationManagerCollectionAssignmentTarget'

groups_requiring_partner_enrollment_device_management_partner_assignment1target.collection_id = 'Collection Id value'


groups_requiring_partner_enrollment_device_management_partner_assignment1.target = groups_requiring_partner_enrollment_device_management_partner_assignment1target

groupsRequiringPartnerEnrollmentArray []= groupsRequiringPartnerEnrollmentDeviceManagementPartnerAssignment1;
request_body.groupsrequiringpartnerenrollment(groupsRequiringPartnerEnrollmentArray)





result = await client.device_management.device_management_partners.post(request_body = request_body)


```