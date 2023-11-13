---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerUser(
	favorite_plan_references = PlannerFavoritePlanReferenceCollection(
		additional_data = {
				"jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d" : {
						"@odata_type" : "#microsoft.graph.plannerFavoritePlanReference",
						"order_hint" : " !",
						"plan_title" : "Next Release Discussion",
				},
				"7o_t_b5a_m_i_a_e2r_vo-1_n-_l7_rm_q_a_g_x2q" : None,
		}
	),
	recent_plan_references = PlannerRecentPlanReferenceCollection(
		additional_data = {
				"jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d" : {
						"@odata_type" : "#microsoft.graph.plannerRecentPlanReference",
						"last_accessed_date_time" : "2018-01-02T22:49:46.155Z",
						"plan_title" : "Next Release Discussion",
				},
		}
	),
)

request_configuration = PlannerRequestBuilder.PlannerRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"",
}

)

result = await graph_client.me.planner.patch(request_body, request_configuration = request_configuration)


```