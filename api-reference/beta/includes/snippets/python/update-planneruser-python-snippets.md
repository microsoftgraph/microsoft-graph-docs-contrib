---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerUser()
favorite_plan_references = PlannerFavoritePlanReferenceCollection()
additional_data = [
'jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d' => favorite_plan_references = Jd8S5gOaFk2S8aWCIAJz42QAAxtD()
		favorite_plan_references.@odata_type = '#microsoft.graph.plannerFavoritePlanReference'

		favorite_plan_references.order_hint = ' !'

		favorite_plan_references.plan_title = 'Next Release Discussion'


favorite_plan_references.jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d = jd8S5gOaFk2S8aWCIAJz42QAAxtD

'7o_t_b5a_m_i_a_e2r_vo-1_n-_l7_rm_q_a_g_x2q' => 		null,
];
favorite_plan_references.additional_data(additional_data)



request_body.favorite_plan_references = favorite_plan_references
recent_plan_references = PlannerRecentPlanReferenceCollection()
additional_data = [
'jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d' => recent_plan_references = Jd8S5gOaFk2S8aWCIAJz42QAAxtD()
		recent_plan_references.@odata_type = '#microsoft.graph.plannerRecentPlanReference'

		recent_plan_references.last_accessed_date_time = '2018-01-02T22:49:46.155Z'

		recent_plan_references.plan_title = 'Next Release Discussion'


recent_plan_references.jd8_s5g_oa_fk2_s8a_w_c_i_a_jz42_q_a_axt_d = jd8S5gOaFk2S8aWCIAJz42QAAxtD

];
recent_plan_references.additional_data(additional_data)



request_body.recent_plan_references = recent_plan_references


request_configuration = PlannerRequestBuilder.PlannerRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"",
}

)


result = await client.me.planner.patch(request_body = request_body, request_configuration = request_configuration)


```