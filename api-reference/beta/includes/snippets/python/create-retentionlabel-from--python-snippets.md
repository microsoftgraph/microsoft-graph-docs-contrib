---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RetentionLabel()
request_body.@odata_type = '#microsoft.graph.security.retentionLabel'

request_body.display_name = 'String'

request_body.behaviorduringretentionperiod(BehaviorDuringRetentionPeriod.String('behaviorduringretentionperiod.string'))

request_body.actionafterretentionperiod(ActionAfterRetentionPeriod.String('actionafterretentionperiod.string'))

request_body.retentiontrigger(RetentionTrigger.String('retentiontrigger.string'))

retention_duration = RetentionDuration()
retention_duration.@odata_type = 'microsoft.graph.security.retentionDuration'


request_body.retention_duration = retention_duration
request_body.is_in_use = Boolean

request_body.description_for_admins = 'String'

request_body.description_for_users = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.label_to_be_applied = 'String'

request_body.defaultrecordbehavior(DefaultRecordBehavior.String('defaultrecordbehavior.string'))

descriptors = FilePlanDescriptor()
additional_data = [
'authority_template@odata_bind' => 'https://graph.microsoft.com/beta/security/labels/authorities(\'fie3f4fc-b966-4c40-94de-fb8a383658e4\')', 
'category_template@odata_bind' => 'https://graph.microsoft.com/beta/security/labels/categories(\'0bjk8-b966-4c40-94de-fb8a383658e4\')', 
'citation_template@odata_bind' => 'https://graph.microsoft.com/beta/security/labels/citations(\'0e23f4fc-b966-4c40-94de-fb8a383658e4\')', 
'department_template@odata_bind' => 'https://graph.microsoft.com/beta/security/labels/departments(\'p99ef4fc-b966-4c40-94de-fb8a383658e4\')', 
'file_plan_reference_template@odata_bind' => 'https://graph.microsoft.com/beta/security/labels/filePlanReferences(\'e095f4fc-b966-4c40-94de-fb8a383658e4\')', 
];
descriptors.additional_data(additional_data)



request_body.descriptors = descriptors



result = await client.security.labels.retention_labels.post(request_body = request_body)


```