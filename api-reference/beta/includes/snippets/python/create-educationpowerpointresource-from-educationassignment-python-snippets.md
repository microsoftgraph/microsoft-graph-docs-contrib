---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentResource()
request_body.distribute_for_student_work = False

resource = EducationResource()
resource.@odata_type = 'microsoft.graph.educationPowerPointResource'

resource.display_name = 'state diagram.pptx'

additional_data = [
'file_url' => 'https://graph.microsoft.com/beta/drives/b!OPmUsPgnBUiMIXMxWcj3neC1xck6I5NIsnFxfrLdmXoOOmEQNO79QpIMPdOmY3nf/items/01QTY63RN327OXRN6EVFE2Q5FRJZTN5EOJ', 
];
resource.additional_data(additional_data)



request_body.resource = resource



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').resources.post(request_body = request_body)


```