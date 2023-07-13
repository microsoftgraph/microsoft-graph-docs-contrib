---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProvisionOnDemandPostRequestBody()
parameters_synchronization_job_application_parameters1 = SynchronizationJobApplicationParameters()
parameters_synchronization_job_application_parameters1.rule_id = '33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2'

subjects_synchronization_job_subject1 = SynchronizationJobSubject()
subjects_synchronization_job_subject1.object_id = '8213fd99-d6b6-417b-8e13-af6334856215'

subjects_synchronization_job_subject1.object_type_name = 'Group'

subjects_synchronization_job_subject1links = SynchronizationLinkedObjects()
members_synchronization_job_subject1 = SynchronizationJobSubject()
members_synchronization_job_subject1.object_id = 'cbc86211-6ada-4803-b73f-8039cf56d8a2'

members_synchronization_job_subject1.object_type_name = 'User'


membersArray []= membersSynchronizationJobSubject1;
members_synchronization_job_subject2 = SynchronizationJobSubject()
members_synchronization_job_subject2.object_id = '2bc86211-6ada-4803-b73f-8039cf56d8a2'

members_synchronization_job_subject2.object_type_name = 'User'


membersArray []= membersSynchronizationJobSubject2;
subjects_synchronization_job_subject1links.members(membersArray)



subjects_synchronization_job_subject1.links = subjects_synchronization_job_subject1links

subjectsArray []= subjectsSynchronizationJobSubject1;
parameters_synchronization_job_application_parameters1.subjects(subjectsArray)



parametersArray []= parametersSynchronizationJobApplicationParameters1;
request_body.parameters(parametersArray)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_job_id('synchronizationJob-id').provision_on_demand.post(request_body = request_body)


```