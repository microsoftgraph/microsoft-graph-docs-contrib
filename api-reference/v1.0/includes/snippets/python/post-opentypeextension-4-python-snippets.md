---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ReplyPostRequestBody()
post = Post()
postbody = ItemBody()
postbody.contenttype(BodyType.Html('bodytype.html'))

postbody.content = '<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>'


post.body = postbody
extensions_extension1 = OpenTypeExtension()
extensions_extension1.@odata_type = 'microsoft.graph.openTypeExtension'

extensions_extension1.extension_name = 'Com.Contoso.HR'

additional_data = [
'company_name' => 'Contoso', 
'expiration_date' => '2015-07-03T13:04:00.000Z', 
'top_picks' => ['Employees only', 'Add spouse or guest', 'Add family', ],
];
extensions_extension1.additional_data(additional_data)



extensionsArray []= extensionsExtension1;
post.extensions(extensionsArray)



request_body.post = post



await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').posts.by_post_id('post-id').reply.post(request_body = request_body)


```