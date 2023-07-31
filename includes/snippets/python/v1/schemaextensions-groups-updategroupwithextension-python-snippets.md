---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
additional_data = [
'graphlearn_courses' => request_body = GraphlearnCourses()
		request_body.course_id = '123'

		request_body.course_name = 'New Managers'

		request_body.course_type = 'Online'


request_body.graphlearn_courses = graphlearn_courses

];
request_body.additional_data(additional_data)





result = await client.groups.by_group_id('group-id').patch(request_body = request_body)


```