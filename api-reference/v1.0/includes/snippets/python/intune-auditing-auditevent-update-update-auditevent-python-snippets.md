---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.audit_event import AuditEvent
from msgraph.generated.models.audit_actor import AuditActor
from msgraph.generated.models.audit_resource import AuditResource
from msgraph.generated.models.audit_property import AuditProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuditEvent(
	odata_type = "#microsoft.graph.auditEvent",
	display_name = "Display Name value",
	component_name = "Component Name value",
	actor = AuditActor(
		odata_type = "microsoft.graph.auditActor",
		audit_actor_type = "Audit Actor Type value",
		user_permissions = [
			"User Permissions value",
		],
		application_id = "Application Id value",
		application_display_name = "Application Display Name value",
		user_principal_name = "User Principal Name value",
		service_principal_name = "Service Principal Name value",
		ip_address = "Ip Address value",
		user_id = "User Id value",
		additional_data = {
				"type" : "Type value",
		}
	),
	activity = "Activity value",
	activity_date_time = "2016-12-31T23:59:51.6363086-08:00",
	activity_type = "Activity Type value",
	activity_operation_type = "Activity Operation Type value",
	activity_result = "Activity Result value",
	correlation_id = UUID("52effe71-fe71-52ef-71fe-ef5271feef52"),
	resources = [
		AuditResource(
			odata_type = "microsoft.graph.auditResource",
			display_name = "Display Name value",
			modified_properties = [
				AuditProperty(
					odata_type = "microsoft.graph.auditProperty",
					display_name = "Display Name value",
					old_value = "Old Value value",
					new_value = "New Value value",
				),
			],
			audit_resource_type = "Audit Resource Type value",
			resource_id = "Resource Id value",
			additional_data = {
					"type" : "Type value",
			}
		),
	],
	category = "Category value",
)

result = await graph_client.device_management.audit_events.by_audit_event_id('auditEvent-id').patch(request_body)


```