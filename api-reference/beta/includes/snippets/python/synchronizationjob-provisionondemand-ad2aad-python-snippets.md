---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProvisionOnDemandPostRequestBody()
parameters_synchronization_job_application_parameters1 = SynchronizationJobApplicationParameters()
parameters_synchronization_job_application_parameters1.rule_id = '6c409270-f78a-4bc6-af23-7cf3ab6482fe'

subjects_synchronization_job_subject1 = SynchronizationJobSubject()
subjects_synchronization_job_subject1.object_id = 'CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com'

subjects_synchronization_job_subject1.object_type_name = 'user'


subjectsArray []= subjectsSynchronizationJobSubject1;
parameters_synchronization_job_application_parameters1.subjects(subjectsArray)



parametersArray []= parametersSynchronizationJobApplicationParameters1;
request_body.parameters(parametersArray)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_job_id('synchronizationJob-id').provision_on_demand.post(request_body = request_body)


```