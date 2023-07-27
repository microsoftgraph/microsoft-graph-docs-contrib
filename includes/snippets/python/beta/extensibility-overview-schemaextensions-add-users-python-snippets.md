---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = User()
request_body.account_enabled = True

request_body.display_name = 'Adele Vance'

request_body.mail_nickname = 'AdeleV'

request_body.user_principal_name = 'AdeleV@m365x72712789.onmicrosoft.com'

password_profile = PasswordProfile()
password_profile.force_change_password_next_sign_in = False

password_profile.password = 'xWwvJ]6NMw+bWH-d'


request_body.password_profile = password_profile
additional_data = [
'extkmpdyld2_graph_learn_courses' => request_body = Extkmpdyld2GraphLearnCourses()
		request_body.CourseId = 100

		request_body.course_name = 'Explore Microsoft Graph'

		request_body.course_type = 'Online'


request_body.extkmpdyld2_graph_learn_courses = extkmpdyld2_graphLearnCourses

];
request_body.additional_data(additional_data)





result = await client.users.post(request_body = request_body)


```