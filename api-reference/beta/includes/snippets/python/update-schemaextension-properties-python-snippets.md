---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
additional_data = [
'ext55gb1l09_ms_learn_courses' => request_body = Ext55gb1l09MsLearnCourses()
		request_body.course_type = 'Admin'


request_body.ext55gb1l09_ms_learn_courses = ext55gb1l09_msLearnCourses

];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```