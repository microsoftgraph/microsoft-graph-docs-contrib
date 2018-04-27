# governanceRoleAssignmentRequest: Create 

Create a role assignment request to represent the operation you want on a role assignment. The operations can be:
| Operation       | type | 
|:---------------|:----------|
| Assign a role assignment| AdminAdd | |
| Activate an eligible role assignment| UserAdd | 
| Deactivate an activated role assignment| UserRemove | 
| Remove a role assignment| AdminRemove | |
| Update a role assignment| AdminUpdate | |
| Request to extend my role assignment| UserExtend | 
| Extend a role assignment| AdminExtend | 
| Request to renew my expired role assignment| UserExtend | 
| Renew an expired role assignment| AdminExtend | 

Detailed examples are shown below.
 
### HTTP request
```http
POST /privilegedAccess/<id>/roleAssignmentRequests
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

### Request body
In the request body, supply a JSON representation of [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) object. 

| Property	   | Type	 |Required|  Description|
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|The id of the resource.|
|roleDefinitionId|String|Yes|The id of the role definition.|
|subjectId|String|Yes|The id of the subject.|
|assignmentState|String|Yes|The state of assignment. The value can be ``Eligible`` and ``Active``.|
|type|String|Yes|The request type. The value can be `AdminAdd`, `UserAdd`, `AdminUpdate`, `AdminRemove`, `UserRemove`, `UserExtend`, `UserRenew`, `AdminRenew`and `AdminExtend`;|
|reason|String| |The reason needs to be provided for the role assignment request for audit and review purpose.|
|schedule|[governanceSchedule](governanceschedule.md)| | The schedule of the role assignment request. For request type of `UserAdd`, `AdminAdd`, `AdminUpdate`, and `AdminExtend`, it is required.|

### Response
If successful, this method returns `201, Created` response code and [governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) object in the response body.

### Example
1. Administrators assign user "nawu@fimdev.net" to role "Billing Reader"

| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Eligible / Active|
|type|String|Yes| AdminAdd|
|reason|String| depends on role Settings||
|schedule|[governanceSchedule](governanceschedule.md)|Yes|        |
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206
{
    "roleDefinitionId":"fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64",
    "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5"
    "subjectId":"918e54be-12c4-4f4c-a6d3-2ee0e3661c51"
    "assignmentState":"Eligible",
    "type":"AdminAdd",
    "schedule":{
        "type":"Once","startDateTime":"2018-02-28T08:22:13.840Z","endDateTime":"2018-05-29T08:22:13.840Z","isPermanent":false
    }
}
```
##### Response

```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#roleAssignmentRequests/$entity",
  "id":"02e516e5-224c-4035-95f4-6a896cbdb4a8",
  "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
  "roleDefinitionId":"fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64",
  "subjectId":"918e54be-12c4-4f4c-a6d3-2ee0e3661c51",  
  "assignmentState":"Eligible",
  "type":"AdminAdd",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":"2018-02-28T08:22:38.3569224Z",
  "status":"Granted",
  "reason":null,
  "statusDetail":[
    {
      "key":"AdminRequestRule","value":"Grant"
    },{
      "key":"ExpirationRule","value":"Grant"
    },{
      "key":"MfaRule","value":"Grant"
    }
  ],
  "schedule":{
    "duration":"PT0S",
    "type":"Once",
    "details":null,"startDateTime":"2018-02-28T08:22:13.84Z","isPermanent":false,"endDateTime":"2018-05-29T08:22:13.84Z"
  },
  "linkedEligibleRoleAssignmentId":null,
}
```

#### 2. User "nawu@fimdev.net" activates the eligible role "Billing Reader"
| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Active|
|type|String|Yes| UserAdd|
|reason|String| depends on role Settings||
|schedule|[governanceSchedule](governanceschedule.md)|Yes|        |
##### Request
```http
POST https://graph.microsoft.com/beta/governanceScenarios/pimforazurerbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206
{
    "roleDefinitionId":"fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64",
    "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5"，
    "subjectId":"918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
    "assignmentState":"Active",
    "type":"UserAdd",
    "reason":"test",
    "schedule":{
        "type":"Once",
        "startDateTime":"2018-02-28T08:32:50.884Z",
        "duration":"PT8H"
    },
    "linkedEligibleRoleAssignmentId":"c35cd26c-c43f-4f62-af6b-5d2c0933a5af",
    }
```
##### Response

```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://canaryapi.azrbac.mspim.azure.com/api/v1/$metadata#roleAssignmentRequests/$entity",
  "id":"3905f617-b4c3-489a-8c31-72d96dfaf9dc",
  "assignmentState":"Active",
  "requestType":"UserAdd",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":"2018-02-28T08:33:15.8489422Z",
  "status":"PendingApprovalProvisioning",
  "reason":"test",
  "statusDetail":[
    {
      "key":"EligibilityRule","value":"Grant"
    },{
      "key":"ExpirationRule","value":"Grant"
    },{
      "key":"MfaRule","value":"Grant"
    },{
      "key":"JustificationRule","value":"Grant"
    },{
      "key":"ActivationDayRule","value":"Grant"
    },{
      "key":"ApprovalRule","value":"Defer"
    }
  ],
  "schedule":{
    "duration":"PT8H",
    "type":"Once",
    "details":null,"startDateTime":"2018-02-28T08:32:50.884Z","isPermanent":false,
    "endDateTime":"0001-01-01T00:00:00Z"
  },
  "linkedEligibleRoleAssignmentId":null,
}
```

#### 3. User "nawu@fimdev.net" deactivates the active role "Billing Reader"
| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Active|
|type|String|Yes| UserRemove|
|reason|String| No||
|schedule|[governanceSchedule](governanceschedule.md)|No|        |
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206

{
    "roleDefinitionId":"fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64",
    "subjectId"::"918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
    "assignmentState":"Active",
    "type":"UserRemove",
    "reason":"Deactivation request",
    "linkedEligibleRoleAssignmentId":"ebd33f32-2c4b-457b-95c4-f07c3a39e3cb",
}
```
##### Response

```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://canaryapi.azrbac.mspim.azure.com/api/v1/$metadata#roleAssignmentRequests/$entity",
  "id":"e5e7d29d-5465-45ac-885f-4716a5ee74b5_fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64_44e535c7-9e8d-480b-908f-2cf3281a87ea",
  "assignmentState":"Active",
  "type":"UserRemove",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":null,
  "status":"Revoked",
  "reason":"Deactivation request",
  "statusDetail":[],
  "schedule":null,
  "linkedEligibleRoleAssignmentId":null,
}
```

#### 4. Administrators remove user "nawu@fimdev.net" from role "Billing Reader"
| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Eligible / Active|
|type|String|Yes| AdminRemove|
|reason|String| No||
|schedule|[governanceSchedule](governanceschedule.md)|No|        |
##### Request
```http
POST https://graph.microsoft.com/beta/privilegedAccess/pimforazurerbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206

{
    "roleDefinitionId":"fa23ad8b-c56e-40d8-ac0c-ce449e1d2c64",
    "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
    "subjectId":"918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
    "assignmentState":"Eligible",
    "type":"AdminRemove",
}
```
##### Response

```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://canaryapi.azrbac.mspim.azure.com/api/v1/$metadata#roleAssignmentRequests/$entity",
  "id":"f442ff7d-5480-439d-8dbc-f5aac2682fd4",
  "assignmentState":"Eligible",
  "type":"AdminRemove",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":null,
  "status":"Revoked",
  "reason":null,
  "statusDetail":[],
  "schedule":null,
  "linkedEligibleRoleAssignmentId":null,
}
```

#### 5. Administrators update role assignment for user "nawu@fimdev.net" to role "Owner"
| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Eligible / Active|
|type|String|Yes| AdminUpdate|
|reason|String| depends on roleSettings||
|schedule|[governanceSchedule](governanceschedule.md)|Yes|        |
##### Request
```http
POST https://graph.microsoft.com/beta/governanceScenarios/pimforazurerbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206

{
    "roleDefinitionId":"8e3af657-a8ff-443c-a75c-2fe8c4bcb635",
    "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
    "subjectId":"918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
    "assignmentState":"Eligible",
    "type":"AdminUpdate",
    "schedule":{
        "type":"Once",
        "startDateTime":"2017-10-04T17:29:18.080Z","endDateTime":"2018-04-01T17:29:00.000Z","isPermanent":false
    }
}
```
##### Response

```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://canaryapi.azrbac.mspim.azure.com/api/v1/$metadata#roleAssignmentRequests/$entity",
  "id":"d210be67-d702-416d-a6b2-2494d10c60d2",
  "assignmentLevel":"Eligible",
  "type":"AdminUpdate",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":"2018-02-28T08:55:15.869694Z",
  "status":"Granted",
  "reason":"",
  "statusDetail":[
    {
      "key":"AdminRequestRule","value":"Grant"
    },{
      "key":"ExpirationRule","value":"Grant"
    },{
      "key":"MfaRule","value":"Grant"
    }
  ],
  "schedule":{
    "duration":"PT0S",
    "type":"Once",
    "details":null,
    "startDateTime":"2017-10-04T17:29:18.08Z",
    "isPermanent":false,
    "endDateTime":"2018-04-01T17:29:00Z"
  },
  "linkedEligibleRoleAssignmentId":null,
}
```

#### 6. Extend expiring role assignment for user ANUJCUSER to role "API Management Service Contributor"
| Property	   | Type	 |Required|  Value |
|:---------------|:--------|:----------|:----------|
|resourceId|String|Yes|\<resourceId\>|
|roleDefinitionId|String|Yes|\<roleDefinitionId\>|
|subjectId|String|Yes|\<subjectId\>|
|assignmentState|String|Yes| Eligible / Active |
|type|String|Yes| AdminExtend|
|reason|String| depends on roleSettings||
|schedule|[governanceSchedule](governanceschedule.md)|Yes|        |
##### Request
```http
POST https://graph.microsoft.com/beta/governanceScenarios/pimforrbac/roleAssignmentRequests
Content-type: application/json
Content-length: 206

{
    "roleDefinitionId":"312a565d-c81f-4fd8-895a-4e21e48d571c",
    "resourceId":"e5e7d29d-5465-45ac-885f-4716a5ee74b5",
    "subjectId":"74487eb5-1630-4fa8-9581-0bb076ea5de3"，
    "assignmentState":"Eligible",
    "requestType":"AdminExtend",
    "reason":"try extend",
}
```
##### Response

```json
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 226
{
  "@odata.context":"https://canaryapi.azrbac.mspim.azure.com/api/v1/$metadata#roleAssignmentRequests/$entity",
  "id":"d976ab01-e425-44b5-b475-7c12d9fe9c7a",
  "assignmentState":"Eligible",
  "type":"AdminExtend",
  "requestedDateTime":"0001-01-01T00:00:00Z",
  "roleAssignmentStartDateTime":"2018-02-28T09:03:34.168707Z",
  "status":"Granted",
  "reason":"try extend",
  "statusDetail":[
    {
      "key":"AdminRequestRule","value":"Grant"
    },{
      "key":"ExpirationRule","value":"Grant"
    },{
      "key":"MfaRule","value":"Grant"
    }
  ],
  "schedule":{
    "duration":"P90D",
    "type":"Once",
    "details":null,
    "startDateTime":"0001-01-01T00:00:00Z",
    "isPermanent":false,
    "stopDateTime":"0001-01-01T00:00:00Z"
  },
  "linkedEligibleRoleAssignmentId":null,
}
```