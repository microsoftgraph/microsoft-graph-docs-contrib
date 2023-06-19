---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProvisionOnDemandPostRequestBody()
parameters_synchronization_job_application_parameters1 = SynchronizationJobApplicationParameters()
subjects_synchronization_job_subject1 = SynchronizationJobSubject()
subjects_synchronization_job_subject1.object_id = '9bb0f679-a883-4a6f-8260-35b491b8b8c8'

subjects_synchronization_job_subject1.object_type_name = 'User'


subjectsArray []= subjectsSynchronizationJobSubject1;
parameters_synchronization_job_application_parameters1.subjects(subjectsArray)


parameters_synchronization_job_application_parameters1.rule_id = 'ea807875-5618-4f0a-9125-0b46a05298ca'


parametersArray []= parametersSynchronizationJobApplicationParameters1;
request_body.parameters(parametersArray)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_job_id('synchronizationJob-id').provision_on_demand.post(request_body = request_body)


```