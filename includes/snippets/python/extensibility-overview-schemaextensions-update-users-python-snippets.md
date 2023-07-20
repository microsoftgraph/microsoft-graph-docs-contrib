---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
additional_data = [
'extkmpdyld2_graph_learn_courses' => request_body = Extkmpdyld2GraphLearnCourses()
		request_body.course_type = 'Instructor-led'

		request_body.courseId=null


request_body.extkmpdyld2_graph_learn_courses = extkmpdyld2_graphLearnCourses

];
request_body.additional_data(additional_data)





result = await client.users.by_user_id('user-id').patch(request_body = request_body)


```