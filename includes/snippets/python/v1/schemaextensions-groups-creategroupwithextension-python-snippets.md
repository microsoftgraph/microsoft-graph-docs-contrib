---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
request_body.display_name = 'New Managers March 2017'

request_body.description = 'New Managers training course for March 2017'

request_body.GroupTypes(['Unified', ])

request_body.mail_enabled = True

request_body.mail_nickname = 'newMan201703'

request_body.security_enabled = False

additional_data = [
'graphlearn_courses' => request_body = GraphlearnCourses()
	request_body.course_id = '123'

	request_body.course_name = 'New Managers'

	request_body.course_type = 'Online'


request_body.graphlearn_courses = graphlearn_courses

];
request_body.additional_data(additional_data)





result = await client.groups.post(request_body = request_body)


```