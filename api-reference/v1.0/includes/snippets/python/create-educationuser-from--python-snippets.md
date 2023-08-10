---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationUser()
request_body.@odata_type = '#microsoft.graph.educationUser'

request_body.primaryrole(EducationUserRole.String('educationuserrole.string'))

request_body.middle_name = 'String'

request_body.externalsource(EducationExternalSource.String('educationexternalsource.string'))

request_body.external_source_detail = 'String'

residence_address = PhysicalAddress()
residence_address.@odata_type = 'microsoft.graph.physicalAddress'


request_body.residence_address = residence_address
mailing_address = PhysicalAddress()
mailing_address.@odata_type = 'microsoft.graph.physicalAddress'


request_body.mailing_address = mailing_address
student = EducationStudent()
student.@odata_type = 'microsoft.graph.educationStudent'


request_body.student = student
teacher = EducationTeacher()
teacher.@odata_type = 'microsoft.graph.educationTeacher'


request_body.teacher = teacher
created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.account_enabled = Boolean

assigned_licenses_assigned_license1 = AssignedLicense()
assigned_licenses_assigned_license1.@odata_type = 'microsoft.graph.assignedLicense'


assignedLicensesArray []= assignedLicensesAssignedLicense1;
request_body.assignedlicenses(assignedLicensesArray)


assigned_plans_assigned_plan1 = AssignedPlan()
assigned_plans_assigned_plan1.@odata_type = 'microsoft.graph.assignedPlan'


assignedPlansArray []= assignedPlansAssignedPlan1;
request_body.assignedplans(assignedPlansArray)


request_body.BusinessPhones(['String', ])

request_body.department = 'String'

request_body.display_name = 'String'

request_body.given_name = 'String'

request_body.mail = 'String'

request_body.mail_nickname = 'String'

request_body.mobile_phone = 'String'

request_body.password_policies = 'String'

password_profile = PasswordProfile()
password_profile.@odata_type = 'microsoft.graph.passwordProfile'


request_body.password_profile = password_profile
request_body.office_location = 'String'

request_body.preferred_language = 'String'

provisioned_plans_provisioned_plan1 = ProvisionedPlan()
provisioned_plans_provisioned_plan1.@odata_type = 'microsoft.graph.provisionedPlan'


provisionedPlansArray []= provisionedPlansProvisionedPlan1;
request_body.provisionedplans(provisionedPlansArray)


request_body.refreshTokensValidFromDateTime = DateTime('String (timestamp)')

request_body.show_in_address_list = Boolean

request_body.surname = 'String'

request_body.usage_location = 'String'

request_body.user_principal_name = 'String'

request_body.user_type = 'String'

on_premises_info = EducationOnPremisesInfo()
on_premises_info.@odata_type = 'microsoft.graph.educationOnPremisesInfo'


request_body.on_premises_info = on_premises_info



result = await client.education.users.post(request_body = request_body)


```