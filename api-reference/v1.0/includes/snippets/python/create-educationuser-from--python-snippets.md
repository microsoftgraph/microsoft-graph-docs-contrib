---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationUser(
	odata_type = "#microsoft.graph.educationUser",
	primary_role = EducationUserRole.Student,
	middle_name = "String",
	external_source = EducationExternalSource.Sis,
	external_source_detail = "String",
	residence_address = PhysicalAddress(
		odata_type = "microsoft.graph.physicalAddress",
	),
	mailing_address = PhysicalAddress(
		odata_type = "microsoft.graph.physicalAddress",
	),
	student = EducationStudent(
		odata_type = "microsoft.graph.educationStudent",
	),
	teacher = EducationTeacher(
		odata_type = "microsoft.graph.educationTeacher",
	),
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	account_enabled = Boolean,
	assigned_licenses = [
		AssignedLicense(
			odata_type = "microsoft.graph.assignedLicense",
		),
	],
	assigned_plans = [
		AssignedPlan(
			odata_type = "microsoft.graph.assignedPlan",
		),
	],
	business_phones = [
		"String",
	],
	department = "String",
	display_name = "String",
	given_name = "String",
	mail = "String",
	mail_nickname = "String",
	mobile_phone = "String",
	password_policies = "String",
	password_profile = PasswordProfile(
		odata_type = "microsoft.graph.passwordProfile",
	),
	office_location = "String",
	preferred_language = "String",
	provisioned_plans = [
		ProvisionedPlan(
			odata_type = "microsoft.graph.provisionedPlan",
		),
	],
	refresh_tokens_valid_from_date_time = "String (timestamp)",
	show_in_address_list = Boolean,
	surname = "String",
	usage_location = "String",
	user_principal_name = "String",
	user_type = "String",
	on_premises_info = EducationOnPremisesInfo(
		odata_type = "microsoft.graph.educationOnPremisesInfo",
	),
)

result = await graph_client.education.users.post(request_body)


```