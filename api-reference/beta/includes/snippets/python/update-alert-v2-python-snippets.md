---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.alert import Alert
from msgraph_beta.generated.models.alert_classification import AlertClassification
from msgraph_beta.generated.models.alert_determination import AlertDetermination
from msgraph_beta.generated.models.alert_status import AlertStatus
from msgraph_beta.generated.models.security.dictionary import Dictionary
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Alert(
	assigned_to = "secAdmin@contoso.com",
	classification = AlertClassification.TruePositive,
	determination = AlertDetermination.Malware,
	status = AlertStatus.InProgress,
	custom_details = Dictionary(
		additional_data = {
				"new_key" : "newValue",
		}
	),
)

result = await graph_client.security.alerts_v2.by_alert_id('alert-id').patch(request_body)


```