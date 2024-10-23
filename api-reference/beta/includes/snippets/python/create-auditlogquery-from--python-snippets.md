---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.audit_log_query import AuditLogQuery
from msgraph_beta.generated.models.security.audit_log_record_type import AuditLogRecordType
from msgraph_beta.generated.models.audit_log_record_type import AuditLogRecordType
from msgraph_beta.generated.models.audit_log_query_status import AuditLogQueryStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuditLogQuery(
	odata_type = "#microsoft.graph.security.auditLogQuery",
	display_name = "String",
	filter_start_date_time = "String (timestamp)",
	filter_end_date_time = "String (timestamp)",
	record_type_filters = [
		AuditLogRecordType.ExchangeAdmin,
	],
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
			"service_filter" : "String",
	}
)

result = await graph_client.security.audit_log.queries.post(request_body)


```