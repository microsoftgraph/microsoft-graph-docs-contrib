# Add custom data to Groups using Schema Extensions (preview)

We're going to walk you through an example to demonstrate how to use *schema extensions*. 

Imagine you're a developer in a Learning Management Software company called “Graph Learn” that builds training courses and materials for businesses.  Office 365 groups, with their rich collaborative experiences, is a fantastic way to deliver course content and record exercises amongst participants for both online courses and instructor led courses.  You may want to make the Office 365 groups used for training courses easily identifiable as training courses, which will allow other developers to also build rich experiences on top of your learning courses.

For this scenario we're going to show you how to:

1. View available schema extensions that you could use
2. Register a schema extension definition that targets groups for training courses
3. Create a new group with extended data based on the schema extension definition that you just registered
4. Update an existing group with extended data based on a schema extension
5. Read back a group and the extension data

>NOTE: This topic shows you how to create and read schema extension values on a *group* resource (steps 3-5).  These methods are also supported for the *device, event, message, post,* and *user* resource types.  So you can update the example requests below using any of those resources.

## 1. View available schema extensions
First, as a developer, we might want to find any other schema extension definitions that our app could reuse.  This can be done by querying the *schemaExtensions* resource.  In the example below, we're going to query for a specific schema extension by *id*.

##### Request
```http
GET https://graph.microsoft.com/beta/schemaExtensions/$filter=id eq 'graphlearn_test')
```
##### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 420
{
    "value": [
        {
            "id":"graphlearn_test",
            "description": "Yet another test schema",
            "targetTypes": [
                "User", "Group"
            ],
            "status": "InDevelopment",
            "owner": "24d3b144-21ae-4080-943f-7067b395b913",
            "properties": [
                {
                    "name": "testName",
                    "type": "String"
                }
            ]
        }
    ]
}
```
## 2. Register a schema extension definition that describes a training course
If we can't find a schema extension that *is* appropriate for our needs, we'll go ahead and register a new definition for our training course on the *group* resource.  The creation request needs to contain a unique id which is a concatenation of one of the verified domains in my tenant (graphlearn.com) and a name for my schema extension (courses) - *graphlearn_courses*.  The request also needs a description (to enable discoverability), target types (defining which resources this extension applies to), and the properties that will make up my schema.  In this case we need to specify a courseId, courseName and courseType.

##### Request
```http
POST https://graph.microsoft.com/beta/schemaExtensions
Content-type: application/json
{
    "id":"graphlearn_courses",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```
##### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420
{
    "id": "graphlearn_course",
    "description": "Graph Learn training courses extensions",
    "targetTypes": [
        "Group"
    ],
    "status": "InDevelopment",
    "owner": "24d3b144-21ae-4080-943f-7067b395b913",
    "properties": [
        {
            "name": "courseId",
            "type": "Integer"
        },
        {
            "name": "courseName",
            "type": "String"
        },
        {
            "name": "courseType",
            "type": "String"
        }
    ]
}
```

## 3. Create a new group with extended data 
Create a brand new group that is extended with extra data using the *graphlearn_courses* schema extension definition that we just registered.  This is a standard ```POST``` to the *group* resource, with the additional *graphlearn_courses* resource defined in the payload.  The response will not mirror back any data extensions.  We need to explicitly ```$select``` the extension by name.

##### Request
```http
POST https://graph.microsoft.com/beta/groups
Content-type: application/json
{
	"displayName": "New Managers March 2017",
	"description": "New Managers training course for March 2017",
	"groupTypes": ["Unified"],
	"mailEnabled": true,
	"mailNickname": "newMan201703",
	"securityEnabled": false,
	"graphlearn_courses": {
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }
}
```
##### Response
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-length: 420
{
    "id": "dfc8016f-db97-4c47-a582-49cb8f849355",
    "createdDateTime": "2017-02-09T00:17:05Z",
    "description": "New Managers training course for March 2017",
    "displayName": "New Managers March 2017",
    "groupTypes": [
        "Unified"
    ],
    "mail": "newMan201703@graphlearn.com",
    "mailEnabled": true,
    "mailNickname": "newMan201703",
    "securityEnabled": false,
    "theme": null,
    "visibility": "Public"
}
```

## 4. Add an extension to an existing group
Similar to the last example, we can extend an existing group resource with the additional *graphlearn_courses* resource defined in the payload of a ```PATCH``` request.

##### Request
```http
PATCH https://graph.microsoft.com/beta/groups/dfc8016f-db97-4c47-a582-49cb8f849355
Content-type: application/json
Content-length: 230
{
    "graphlearn_courses":{
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }   
}
```
##### Response
```http
HTTP/1.1 204 No Content
```

## 5. Get a group and its extension data
To get the group **and** its extension data, we need to use $select to specify the extension by name, in this case by *graphlearn_courses*.

#### Request
```http
GET https://graph.microsoft.com/beta/groups/dfc8016f-db97-4c47-a582-49cb8f849355?$select=displayName,id,description,graphlearn_courses
```

##### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 326
{
	"displayName": "New Managers March 2017",
	"description": "New Managers training course for March 2017",
	"graphlearn_courses": {
        "@odata.type": "#microsoft.graph.ComplexExtensionValue",
	    "courseId":"123",
	    "courseName":"New Managers",
	    "courseType":"Online"
    }
}
```
