---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.search.acronym import Acronym
from msgraph.generated.models.answer_state import AnswerState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Acronym(
	display_name = "GDPR",
	stands_for = "General Data Protection Regulation",
	description = "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.",
	web_url = "http://contoso.com/GDPR",
	state = AnswerState.Published,
)

result = await graph_client.search.acronyms.post(request_body)


```