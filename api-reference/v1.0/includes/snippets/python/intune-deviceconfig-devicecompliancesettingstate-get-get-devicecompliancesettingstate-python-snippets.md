---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.device_compliance_policy_setting_state_summaries.by_device_compliance_policy_setting_state_summary_id('deviceCompliancePolicySettingStateSummary-id').device_compliance_setting_states.by_device_compliance_setting_state_id('deviceComplianceSettingState-id').get()


```