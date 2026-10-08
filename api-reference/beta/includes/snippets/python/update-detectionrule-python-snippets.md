---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.detection_rule import DetectionRule
from msgraph_beta.generated.models.detection_rule_status import DetectionRuleStatus
from msgraph_beta.generated.models.security.query_condition import QueryCondition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DetectionRule(
	status = DetectionRuleStatus.Disabled,
	query_condition = QueryCondition(
		query_text = "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'",
	),
)

result = await graph_client.security.rules.detection_rules.by_detection_rule_id('detectionRule-id').patch(request_body)


```