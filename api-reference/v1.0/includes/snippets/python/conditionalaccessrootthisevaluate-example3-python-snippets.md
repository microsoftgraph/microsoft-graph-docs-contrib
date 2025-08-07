---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.identity.conditionalaccess.evaluate.evaluate_post_request_body import EvaluatePostRequestBody
from msgraph.generated.models.user_sign_in import UserSignIn
from msgraph.generated.models.user_action_context import UserActionContext
from msgraph.generated.models.user_action import UserAction
from msgraph.generated.models.sign_in_conditions import SignInConditions
from msgraph.generated.models.conditional_access_device_platform import ConditionalAccessDevicePlatform
from msgraph.generated.models.conditional_access_client_app import ConditionalAccessClientApp
from msgraph.generated.models.risk_level import RiskLevel
from msgraph.generated.models.insider_risk_level import InsiderRiskLevel
from msgraph.generated.models.authentication_flow import AuthenticationFlow
from msgraph.generated.models.conditional_access_transfer_methods import ConditionalAccessTransferMethods
from msgraph.generated.models.device_info import DeviceInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EvaluatePostRequestBody(
	sign_in_identity = UserSignIn(
		odata_type = "#microsoft.graph.userSignIn",
		user_id = "15dc174b-f34c-4588-ac45-61d6e05dce93",
	),
	sign_in_context = UserActionContext(
		odata_type = "#microsoft.graph.userActionContext",
		user_action = UserAction.RegisterSecurityInformation,
	),
	sign_in_conditions = SignInConditions(
		device_platform = ConditionalAccessDevicePlatform.MacOS,
		client_app_type = ConditionalAccessClientApp.Browser,
		sign_in_risk_level = RiskLevel.Low,
		user_risk_level = RiskLevel.High,
		service_principal_risk_level = RiskLevel.None,
		country = "CA",
		ip_address = "40.77.182.32",
		insider_risk_level = InsiderRiskLevel.Minor,
		authentication_flow = AuthenticationFlow(
			transfer_method = ConditionalAccessTransferMethods.DeviceCodeFlow,
		),
		device_info = DeviceInfo(
			trust_type = "EntraID",
		),
	),
	applied_policies_only = True,
)

result = await graph_client.identity.conditional_access.evaluate.post(request_body)


```