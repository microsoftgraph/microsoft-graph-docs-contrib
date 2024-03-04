---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.audit_log_query import AuditLogQuery

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuditLogQuery(
	odata_type = "#microsoft.graph.security.auditLogQuery",
	display_name = "String",
	filter_start_date_time = "String (timestamp)",
	filter_end_date_time = "String (timestamp)",
	keyword_filter = "String",
	operation_filters = [
		"String",
	],
	user_principal_name_filters = [
		"String",
	],
	ip_address_filters = [
		"String",
	],
	object_id_filters = [
		"String",
	],
	administrative_unit_id_filters = [
		"String",
	],
	status = AuditLogQueryStatus.NotStarted,
	additional_data = {
			"record_type_filter" : "String",
			"service_filter" : "String",
	}
)

result = await graph_client.security.audit_log.queries.post(request_body)


```