# Authentication Strengths policy for workload identities


These APIs have the following entry points:
/policies/authenticationStrengthsPolicies 
This entry point redirect to the next entry point (/identity/conditionalAccess/workloadAuthenticationStrengths/policies)

/identity/conditionalAccess/workloadAuthenticationStrengths/policies
/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationCombination <!-- Review -->
/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationMethodModes


## Contacts

> _You **must** have at least one PM contact here._\
> _Feel free to list more contacts here._

| Role | Name                   |
| ---- | ---------------------- |
| PM   | Daniel Wood (dawoo) |
| PM   | Inbar Cizer Kobrinsky (inbarc) |
| Eng  | Sivanand Kopparam (sikoppar) |
| Eng  | Joe Blackman (joblac) |
| Eng  | Jose Cardenas Salazar (jcardena)|
| Eng  | Sam Belcastro 



## Scenarios and personas

Authentication strength is a new Conditional Access control which enables admins to require pre-defined sets of authentication methods during authentication. Admins can configure authentication strengths for both users and workload identities (i.e. service principals and managed identities). 

Abbe is the Conditional Access admin at Contoso. She just heard of “Authentication Strengths” – a new feature in Conditional Access that will allow her to require service principals to use specific authentication methods depending on certain conditions, such as the resource they are accessing, their risk, or their location. 

### 1 Review authentication strength in the tenant

As the first step, Abbe would like to understand which authentication strengths are available in the Contoso tenant. She needs to query all authentication strengths in the tenant.

```HTTP
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies
```

```json
HTTP/1.1 200 OK
{
    {
        "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy", // Review
        "id": "00000000-0000-0000-0000-000000000001", 
        "createdDateTime": "2017-10-30T10:59:01Z",
        "modifiedDateTime": "2017-10-30T10:59:01Z",
        "displayName": "Strong authentication methods",
        "description": "Strong authentication methods that are encrypted and not easily shared or exposed, such as a certificate.",
        "strengthsPolicyType": "builtIn",
        "requirementsSatisfied": null, // Review (are there any requirements satisifed?)
        "allowedMethods": [   // collection of flagged enums for compact representation to mirror the authentication method modes and to enable filtering
        // Review (renamed allowedCombinations)
            "certificate", 
            "managedCredential",
            "federatedIdentityCredential"
        ]         
    },    
    {
        "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy",
        "id": "00000000-0000-0000-0000-000000000002",
        "createdDateTime": "2017-10-30T10:59:01Z",
        "modifiedDateTime": "2017-10-30T10:59:01Z",
        "displayName": "Managed authentication methods",
        "description": "Managed authentication methods are not created or maintained by the app owner.",
        "strengthsPolicyType": "builtIn",
        "requirementsSatisfied": null,
        "allowedMethods": [   
            "managedCredential",
            "federatedIdentityCredential"
        ]
    }
}
```

Abbe can also review each and every authentication strength by ID and explore the `allowedMethods` in it:

```HTTP
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/00000000-0000-0000-0000-000000000002
```

```json
HTTP/1.1 200 OK
{
    "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy",
    "id": "00000000-0000-0000-0000-000000000002",
    "createdDateTime": "2017-10-30T10:59:01Z",
    "modifiedDateTime": "2017-10-30T10:59:01Z",
    "displayName": "Managed authentication methods",
    "description": "Managed authentication methods are not created or maintained by the app owner.",
    "strengthsPolicyType": "builtIn",
    "requirementsSatisfied": null,
    "allowedMethods": [   
        "managedCredential",
        "federatedIdentityCredential"
    ]
}
```


### 2 Understand the supported authentication `allowedMethods` and authentication methods modes

Abbe has determined that the built-in authentication strengths doesn’t answer her requirements. She needs to create a new authentication strength called “Contoso default auth strength” and include only certificates. Before she can create a new custom authentication strength, she needs to understand what the supported `allowedMethods` and authentication method modes are.

She starts by querying the list of  `allowedMethods` that can be used (referenced) in an authentication strength.  It's a read-only list offered by Microsoft.  
Public documentation note for `allowedMethods` - We will document that this flagged enum has a limited set of allowed methods.


```HTTP
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/allowedMethods
```

```json
{
    "value": [
        "clientSecret",
        "managedCredential",
        "federatedIdentityCredential"
    ]
}
```

If Abbe wants to find more details on one of the authentication methods from this combination, she can query the authenticationMethodModes

```json
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationMethodModes/clientSecret

HTTP/1.1 200 OK
{
    "id" : "clientSecret", // Review -- why is id same as authenticationMethod? Should id be a GUID?
    "displayName" : "Client secret",
    "authenticationMethod" : "clientSecret"
}
```

```json
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationMethodModes/managedCredential

HTTP/1.1 200 OK
{
    "id" : "managedCredential",
    "displayName" : "Managed credential",
    "authenticationMethod" : "managedCredential"
}
```

```json
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationMethodModes/federatedIdentityCredential
{
    "id" : "federatedIdentityCredential",
    "displayName" : "Federated identity credential",
    "authenticationMethod" : "federatedIdentityCredential"
}
```


Or if she wants to get a list of all the supported authentication method modes that can be used (referenced) in an authentication strength.  It's a read-only list offered by Microsoft.  

```HTTP
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/authenticationMethodModes
```

```json
{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#authenticationMethodModeDetail",
    "value": [
        {
            "id" : "clientSecret",
            "displayName" : "Client secret",
            "authenticationMethod" : "clientSecret"
        },
        {
            "id" : "managedCredential",
            "displayName" : "Managed credential",
            "authenticationMethod" : "managedCredential"
        },
        {
            "id" : "federatedIdentityCredential",
            "displayName" : "Federated identity credential",
            "authenticationMethod" : "federatedIdentityCredential"
        }
    ] 
}
```

### 3 Create a custom authentication strength

Now that Abbe is familiar with the supported authentication method modes, she can create a new custom strength that meets her requirements - just a certificate. Customers can create up to 7 custom authentication strengths policies (10 authentication strength policies in total).

```json
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies

   {
            "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy",
            "displayName": "Contoso authentication level",
            "description": "The only authentication level allowed to our secret apps",
            "allowedMethods": [   
                "certificate"
            ]
    }    

201 Created
{
            "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy",
            "id": "4504965a-2be8-4c68-b087-4444a0333bbe",
            "createdDateTime": "2017-10-30T10:59:01Z",
            "modifiedDateTime": "2017-10-30T10:59:01Z",
            "displayName": "Contoso authentication level",
            "description": "The only authentication level allowed to our secret apps",
            "strengthsPolicyType": "custom",
            "requirementsSatisfied": null,
            "allowedMethods": [   
                "certificate"
            ]
    }    
```

### 4 Create a new Conditional Access policy

Once this new strength is created, Chris – the Conditional Access admin, can use “Contoso authentication level” in Conditional Access policies.

```json
POST  https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies/
    {
        "displayName": "Risk Policy 2",
        "state": "Disabled",
        "conditions": {
            "applications": {
                "includeApplications": ["All"],
                "excludeApplications": ["00000003-0000-0ff1-ce00-000000000000", "00000002-0000-0ff1-ce00-000000000000"]
            },
            "users": {
                "includeUsers":["None"],
                "excludeUsers": [],
                "excludeGroups": ["63861f9c-1c94-2231-cde8-94adec2ac720", "9d88bece-24c9-4835-8949-0cd6285d1d27"],
                "excludeRoles": ["e14177ef-7145-4004-83b3-1de3c7914cd6"]
            },
            "clientApplications": {
                "includeServicePrincipals": [
                    "ServicePrincipalsInMyTenant"
                ],
                "excludeServicePrincipals": []
            },
            "signInRiskLevels": ["Medium", "High"],
            "userRiskLevels": [],
            "locations": {
                "includeLocations": ["All"],
                "excludeLocations": ["AllTrusted"]
            },
            "platforms": null,
            "clientAppTypes": [],
            "devices": null
        },
        "grantControls": {
            "operator": "or",
            "builtInControls": [],
            "customAuthenticationFactors": [],
            "termsOfUse": [],
            "workloadAuthenticationStrength": {         // Review - should it be a separate grant control?
                "id": "4504965a-2be8-4c68-b087-4444a0333bbe"
            }
        },
        "sessionControls": {
            "applicationEnforcedRestrictions": null,
            "cloudAppSecurity":  null,
            "signInFrequency":  null,
            "persistentBrowser":  null
        }
    }

NO CONTENT 204
```

### 5 Update an existing custom authentication strengths
Note: Editing of built-in Auth Strength is not supported. For Custom Strength – We allow updating most of the properties with a PATCH operation. For any update of the allowed methods, we require use of an action – updateAllowedMethods – this action will provide the admins with the implications of their change as well as the old and new policy.

For auditing purposes, Abbe needs to update the name and description of her custom strength:

```json
PATCH https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/4504965a-2be8-4c68-b087-4444a0333bbe/
 {
            "displayName": "Contoso's Secret app authentication level",
            "description": "Authentication level allowed to our secret apps",
    }
NO CONTENT 204
```

Based on feedback from her users, Abbe needs to support one more `allowedMethods` in the “Contoso Secret apps Auth Strength” - client secret. She uses the APIs to update the supported  `allowedMethods`  for this strength. By mistake, she tries to make updates to the built-in strength – this operation fails because built-in authentication strength cannot be updated.

```json
PATCH https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/00000000-0000-0000-0000-000000000001
 {
             "allowedMethods": [   
                "clientSecret",
                "certificate"
            ]
}
405 NOT ALLOWED
{
   "odata.error": {
        "code": "NotAllowed",
        "message": "Built-in authentication strength cannot be updated. ",
        "innerError": {
            "date": "date-value",
            "request-id": "request-id-value",
            "client-request-id": "client-request-id-value"
        }
   }
}
```

Then, she tries to update the `allowedMethods` of her built-in strength using PATCH operation. However, this operation also fails because we require updateAllowedMethods action in order to make changes to the methods.

```json
PATCH https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/4504965a-2be8-4c68-b087-4444a0333bbe/
{
             "allowedMethods": [   
                "clientSecret",
                "certificate"
            ]
}
405 NOT ALLOWED
{
   "odata.error": {
        "code": "NotAllowed",
        "message": "Methods can only be updated using updateAllowedMethods action",
        "innerError": {
            "date": "date-value",
            "request-id": "request-id-value",
            "client-request-id": "client-request-id-value"
        }
   }
}
```

Now, Abbe is using `updateAllowedMethods` to add client secret to the built-in strength. This operation will provide her the old and new values in the response as well as implications of the change. By mistake, Abbe also added client secret to her authentication strength. She will see the implications of her update in the response.

```json
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/4504965a-2be8-4c68-b087-4444a0333bbe/updateAllowedCombinations
{
             "allowedMethods": [   
                "clientSecret",
                "certificate"
            ]
}

200 SUCCESS
 {
            "@odata.type" : "microsoft.graph.updateAllowedMethodsResult",
            "previousMethods": [
                "certificate"
            ],
            "currentMethods": [
                "clientSecret",
                "certificate"
            ],
            "conditionalAccessReferences": ["ad9b5fae-2a89-4e4a-a1ea-f74c28cd91e2", "cb50e75d-8a29-433f-9cb2-e95920a4a546"],       
            "additionalInformation": "You have lowered the security of the <display Name> authentication strength by adding a lower security combination. This Authentication Strength is referenced by one or more Conditional Access policies. Review conditionalAccessReferences to understand which Conditional Access policies were impacted by this change. To reverse your changes back, use updateAllowedCombinations action with the previous allowedMethods values."
    }    
```

### 6 Delete an existing authentication strength  

Abbe has now realized that she no longer needs her custom authentication strengths, and that she would like to be more secure and use the managed credential authentication strength. Abbe would like to delete the custom authentication strength she has created. However, since the custom authentication strength is referenced in a Conditional Access policy – she is unable to delete this authentication strength. When she tries to delete the authentication strength, she gets an error that explains that the Authentication Strength is referenced by a Conditional Access policy. Abbe can query the Conditional Access APIs to understand which Conditional Access policies are referring to the strength she would like to delete.

```json
DELETE https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/4504965a-2be8-4c68-b087-4444a0333bbe/

400 BAD REQUEST 
{
    "error": {
        "code": "badRequest",
        "message": "Delete is not supported for an authentication strength policy that is referenced by one or more Conditional Access policies. Use Conditional Access APIs to find the references. For example,  /identity/conditionalAccess/policies/?$select=id,displayName,workloadAuthenticationStrengthRequirements&$filter=grantControls/workloadAuthenticationStrength/id eq '<Auth Strength ID>'",
    }
}
````

```json
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies/?$select=id,displayName,workloadAuthenticationStrengthRequirements$filter=grantControls/workloadAuthenticationStrength/id eq '00000000-0000-0000-0000-000000000001'
   {
        "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#conditionalAccessPolicy",
        "values": [
               {
                "id": "f9b01ff1-4cc3-42cb-92d4-4101eb9e022d",
                "displayName": "Require auth strength for service principals",
                "authenticationStrengthRequirements": "Contoso authentication strength"
               }
        ]
   }
```

Abbe has asked Chris to update the above Conditional Access policies to use Strong credentials built-in authentication strength. Now, she can delete the custom authentication strength.

```json
DELETE https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/4504965a-2be8-4c68-b087-4444a0333bbe/

NO CONTENT 204
```

### 6 Troubleshoot - Query by authentication method

Abbe is troubleshooting a sign-in issue of a user; she is trying to understand if the methods the user has registered are included in the Conditional Access policy and in the Authentication Strength policy. The user has registered for SMS so Abbe would like to know which authentication strengths includes SMS. Abbe is querying the Authentication Strength APIs based on authentication method using "findByMethodMode" function.

```json
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/workloadAuthenticationStrengths/policies/findByMethodMode('certificate') 

HTTP/1.1 200 OK
{
    "@odata.type" : "microsoft.graph.authenticationStrengthsPolicy",
    "id": "00000000-0000-0000-0000-000000000001", 
    "createdDateTime": "2017-10-30T10:59:01Z",
    "modifiedDateTime": "2017-10-30T10:59:01Z",
    "displayName": "Strong credentials",
    "description": "Strong credentials that are encrypted and not easily shared or exposed.",
    "strengthsPolicyType": "builtIn",
    "requirementsSatisfied": null,
    "allowedCombinations": [  
        "certificate",
        "managedCredential",
        "federatedIdentityCredential"
    ]
}
```

Now Abbe would like to see what the user has registered for and she is using the Authentication Methods APIs to see if they are registered for SMS. 

<!-- Review -- Not applicable for Service Principals. How does an admin see which credentials a service principals has? -->

```json
GET https://graph.microsoft.com/v1.0/users/user@contoso.com/authentication/phoneMethods

    OK 200
    {
        "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#authenticationMethods",
        "value": [
            {
                "id": "bbfc62d7-6c67-4a42-9cab-4c2f970732ed",
                "isUsable": true,
                "methodUsabilityReason": "enabledByPolicy",
                "phoneNumber": "+1 111 222 3333",
                "authenticationPhoneType": "mobile",
                "smsSignInState": "notAllowedByPolicy"

            }
        ]
    }
```

If Abbe wants to find out which custom Authentication Strength are there in the tenant, she can query with a filter.

```json
GET https://graph.microsoft.com/identity/conditionalAccess/authenticationStrengths/policies/?$filter=strengthsPolicyType eq "custom" 
{
            "@odata.type" : "microsoft.graph.authenticationStrengthsPolicy",
            "id": "4504965a-2be8-4c68-b087-4444a0333bbe",
            "createdDateTime": "2017-10-30T10:59:01Z",
            "modifiedDateTime": "2017-10-30T10:59:01Z",
            "displayName": "Contoso authentication level",
            "description": "The only authentication level allowed to our secret apps",
            "strengthsPolicyType": "custom",
            "requirementsSatisfied": "mfa",
            "allowedCombinations": [   
                "password, sms",
                "password, hardwareOath",
                "password, microsoftAuthenticatorPush"
            ]
    }    
```

In addition, Abbe would like to find authentication strength by name, so it is easier for her to navigate between the policies.

```HTTP
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrengths/policies/$filter=startswith(displayName, 'Contoso')
```

```json
HTTP/1.1 200 OK
{
            "@odata.type" : "microsoft.graph.workloadAuthenticationStrengthsPolicy",
            "id": "00000000-0000-0000-0000-000000000004",
            "createdDateTime": "2017-10-30T10:59:01Z",
            "modifiedDateTime": "2017-10-30T10:59:01Z",
            "displayName": "Contoso authentication strength",
            "description": "Contoso custom authentication strength.",
            "strengthsPolicyType": "custom",
            "requirementsSatisfied": null,
            "allowedCombinations": [   
                "certificate",
                "clientSecret"
            ]
    }
```

## Details and schema changes

### New entity types

#### workloadAuthenticationStrengthsPolicy

```xml
<EntityType Name="workloadAuthenticationStrengthsPolicy" BaseType="microsoft.graph.entity">
    <Property Name="id" Type="Edm.String" Nullable="false" />
    <Property Name="createdDateTime" Type="Edm.DateTimeOffset" Nullable="false" />
    <Property Name="modifiedDateTime" Type="Edm.DateTimeOffset" Nullable="false" />
    <Property Name="displayName" Type="Edm.String" Nullable="false" />
    <Property Name="description" Type="Edm.String" Nullable="true" />
    <Property Name="strengthsPolicyType" Type="microsoft.graph.strengthsPolicyType" Nullable="false" />
    <Property Name="requirementsSatisfied" Type="microsoft.graph.authenticationStrengthRequirements" Nullable="false" />
    <Property Name="allowedMethods" Type="Collection(microsoft.graph.authenticationMethodMode)" Nullable="false" />
</EntityType>
```

##### Properties

| Property   | Type|Description|Read-Only|
|:---------------|:--------|:----------|:-------:|
|`id`|`String` | ID of a policy |✓|
|`createdDateTime`|`DateTimeOffset` | creation datetime of the policy |✓|
|`modifiedDateTime`|`DateTimeOffset` | last modification datetime of the policy |✓|
|`displayName`|`String`| human-readable name of the policy.||
|`description`| `String`| A description for this policy.||
|`strengthsPolicyType`|`microsoft.graph.strengthsPolicyType`| The type of Authentication strength, can be Built-in or Custom. Built-in authentication strength are created by Microsoft and cannot be updated; Custom can be created by an admin | ✓|
|`requirementsSatisfied`|`microsoft.graph.authenticationStrengthRequirements`|Describes if the Conditional Access authenticationStrengthRequirements that can be satisfy by this Authentication Strength. For example, Risk based Conditional Access policy with password reset control. When selecting password reset control, authentication strength that at satisfies at least multi-factor is required. This filed is used to display the only relevant authentication strength in Conditional Access, based on the controls selected in the policy (for example, password reset).|✓|
|`allowedMethods`|`Collection(microsoft.graph.authenticationMethodMode)`| Summary of the allowed method modes that are associated with the Authentications strength. This is a Collection of flagged enums| |


##### Supported functionality

| Operation | Supported | Method        | Success | Notes |
| --------- | :-------: | ------------- | ------- | ----- |
| List      |     ✓     | `GET`         | `200`   |       |
| Get       |     ✓     | `GET`         | `200`   |       |
| Create    |     ✓     | `POST`        | `201`   | Only custom authentication strength can be created|
| Update    |     ✓     | `PATCH`/`PUT` | `200`  | Only some parts of a custom authentication strength can be updated - to update `allowedCombinations` use updateAllowedCombinations action|
| Delete    |     ✓     | `DELETE`      | `204`   | Only custom authentication strength can be deleted|

## Error conditions and messages

| Scenario | Method | Code | Message |                                                                                                                |
| -------- | ------ | ---- | ------- |
| Create a built-in authentication strength|`PATCH`| `405`| Only custom authentication strengths can be created.|
|Update a built-in authentication strength | `PATCH` | `405` | Built-in authentication strengths cannot be updated |
| Update  `allowedMethods` in a custom authentication strength| `PATCH`| `405` | `allowedMethods` can only be updated using updateAllowedCombinations action |
| Delete an authentication strength that is referenced by a Conditional Access policy |  `DELETE` | `400` | Delete is not supported for an authentication strength policy that is referenced by one or more Conditional Access policies. Use Conditional Access APIs to find the references. For example,  /identity/conditionalAccess/policies/?$select=id,displayName,workloadAuthenticationStrengthRequirements&$filter=grantControls/workloadAuthenticationStrength/id eq '00000000-0000-0000-0000-000000000001'|

##### Supported query patterns

| Pattern                | Supported | Syntax                                 | Notes |
| ---------------------- | :-------: | -------------------------------------- | ----- |
| Filter                 |     ✓     | `$filter=startswith(displayName, 'strong')` | Used to search authentication strength by Name      |
| Filter                 |     ✓     | `$filter=strengthsPolicyType eq "custom"` | Used to filter authentication strength by type (custom or built-in)      |

#### function findByMethodMode || 

<!-- Review -- is there a difference between authenticationMethodMode and authenticationMethodModeDetail? Is there a difference bewteen authenticationCombinations and allowedCombinations? -->

This function help admin to search authentication strengthbased on authentication method mode. It searches the allowedMethods (collection of authentication authenticationMethodModeDetail) and search for the authentication method within the authenticationMethodModeDetail.

##### Parameters

| Parameter       | Type            | Kind                                  | Required? | Description                                 |
| --------------- | --------------- | ------------------------------------- | --------- | ------------------------------------------- |
| `findByMethodMode` | `collection(microsoft.graph.authenticationMethodMode)` | `binding` |           | This function help admin to search authentication strengthbased on authentication method. |

```xml
<Function Name="findByMethodMode" IsBound="true">
   <Parameter Name="bindingparameter" Type="Collection(graph.workloadAuthenticationStrengthsPolicy)"/>
   <Parameter Name="authenticationMethodMode" Type="Collection(graph.authenticationMethodMode)" Nullable="false" />
   <ReturnType Type="Collection(graph.authenticationStrengthPolicy)"/>
</Function>
```

### authenticationMethodModeDetail

```xml
<EntityType Name="authenticationMethodModeDetail" BaseType="microsoft.graph.entity">
    <Property Name="id" Type="Edm.String"  Nullable="false" />
    <Property Name="displayName" Type="Edm.String"  Nullable="false" />
    <Property Name="authenticationMethod" Type="microsoft.graph.authenticationMethod" Nullable="false" /> /
</EntityType>
```

| Property   | Type|Description|Read-Only|
|:---------------|:--------|:----------|:-------:|
|`id`|`String` | ID of a method mode, similar name to the authenticationMethodMode enum values |✓|
|`displayName`|`String`| human-readable name of the method variant|✓|
|`authenticationMethod`|`microsoft.graph.authenticationMethod"`| The authentication method used for this variant|✓|

##### Supported functionality

| Operation | Supported | Method        | Success | Notes |
| --------- | :-------: | ------------- | ------- | ----- |
| List      |     ✓     | `GET`         | `200`   |       |
| Get       |     ✓     | `GET`         | `200`   |       |
| Create    |     X      | `POST`        | `201`   |       |
| Update    |     X      | `PATCH`/`PUT` | `204`   |       |
| Delete    |     X      | `DELETE`      | `204`   |       |

#
##### Supported functionality 

> _Fill in the following table with the supported operations and any additional notes._

| Operation | Supported | Method        | Success | Notes |
| --------- | :-------: | ------------- | ------- | ----- |
| List      |     X     | `GET`         | `200`   |       |
| Get       |     ✓     | `GET`         | `200`   |       |
| Create    |     ✓     | `POST`        | `201`   |       |
| Update    |     ✓     | `PATCH`/`PUT` | `204`   |       |
| Delete    |     X     | `DELETE`      | `204`   |       |

##### Supported query patterns

> _Fill in the table below with the supported operations and any additional notes._

| Pattern                | Supported | Syntax                                 | Notes |
| ---------------------- | :-------: | -------------------------------------- | ----- |
| Server-side pagination |     ✓     | `@odata.nextLink`                      |       |
| Filter                 |     ✓     | `/collection?$filter=propA eq 'value'` |       |

### New complex types

#### `authenticationStrengthsPolicy` supported operations 

<!-- Review -- does this need to change between user/workloads? -->

|Operation|Supported|Method       |Success   |Error               |
|---------|:-------:|-------------|----------|--------------------|
|List     |✓        |`GET`        |`200`     |`400, 401, 403`|
|Get      |✓        |`GET`        |`200`     |`400, 401, 403`|
|Create   |✓        |`POST`       |`201`     |`400, 401, 403`|
|Update   |X        |`PATCH`      |     |`400, 401, 405`|
|Delete   |X        |`DELETE`     |     |`400, 401, 405`|

### New enums

#### strengthsPolicyType values

```xml
<EnumType Name="strengthsPolicyType">
    <Member Name="builtIn" Value="0" />
    <Member Name="custom" Value="1" />
    <Member Name="unknownFutureValue" Value="2" />
</EnumType>
```

| Property   | Description|
|:---------------|:----------:|
|`builtIn`| Built-in Authentication Strength policy|
|`custom`|  Custom Authentication Strength policy|
|`unknownFutureValue`| Evolvable enum sentinal value|

#### authenticationMethodMode values

<!-- Review -- does this need to be renamed for workloads? -->

```xml
<EnumType Name="authenticationMethodMode" IsFlags="true">
        <Member Name="clientSecret" Value="1" /> 
        <Member Name="symmetricKey" Value="2" /> 
        <Member Name="certificate" Value="4" />  
        <Member Name="managedCredential" Value="8" />
        <Member Name="federatedIdentityCredential" Value="16" />      
</EnumType>
```

| Property   | Description|
|:---------------|:----------:|
|`clientSecret`| Password|
|`symmetricKey`| Symmetric key|
|`certificate`| Certificate|
|`managedCredential`| Credential used by managed identities but not seen or managed by the app owner|
|`federatedIdentityCredential`| Credential managed and trusted by a 3rd party provider such as GitHub|



 #### authenticationMethod
<!-- Review -- does this need to be renamed for workloads? Is there any difference with authenticationMethodMode?-->

```xml
<EnumType Name="authenticationMethodMode" IsFlags="true">
        <Member Name="clientSecret" Value="1" /> 
        <Member Name="symmetricKey" Value="2" /> 
        <Member Name="certificate" Value="4" />  
        <Member Name="managedCredential" Value="8" />
        <Member Name="federatedIdentityCredential" Value="16" />      
</EnumType>
```

| Property   | Description|
|:---------------|:----------:|
|`clientSecret`| Password|
|`symmetricKey`| Symmetric key|
|`certificate`| Certificate|
|`managedCredential`| Credential used by managed identities but not seen or managed by the app owner|
|`federatedIdentityCredential`| Credential managed and trusted by a 3rd party provider such as GitHub|

### New actions/functions

#### updateAllowedCombinations

This action is bound to an authentication strength policy - To update combination of custom authentication strength – you must use updateAllowedCombinations.

##### Parameters

| Parameter              | Type   | Required? | Description                                    |
| ---------------------- | ------ | --------- | ---------------------------------------------- |
| `combinations` | `Collection(microsoft.graph.authenticationMethodMode)` | `yes`     | The `allowedCombinations` that will be updated in the authentication strength policy |

##### CSDL

```xml
<Action Name="updateAllowedCombinations" IsBound="true">
    <Parameter Name="bindingParameter" Type="graph.authenticationStrengthsPolicy"/>
    <Parameter Name="allowedCombinations" Type="Collection(microsoft.graph.authenticationMethodMode)"/>
    <ReturnType Type="graph.updateAllowedCombinationsResult"/>
</Action>
```

### Complex Type: updateAllowedCombinationsResult

```xml
<ComplexType Name="updateAllowedCombinationsResult">
    <Property Name="previousCombinations" Type="Collection(microsoft.graph.authenticationMethodMode)" Nullable="true" />
    <Property Name="currentCombinations" Type="Collection(microsoft.graph.authenticationMethodMode)" Nullable="true" />
    <Property Name="conditionalAccessReferences" Type="Collection(Edm.String)" Nullable="true" />
    <Property Name="additionalInformation" Type="Edm.String" Nullable="true" />
</ComplexType>
```

| Property   | Type|Description|Read-Only|
|:---------------|:--------|:----------|:-------:|
|`previousCombinations`|`Collection(microsoft.graph.authenticationMethodMode)`| The `allowedCombinations` that were used by this authentication strength before the change.|✓|
|`currentCombinations`|`Collection(microsoft.graph.authenticationMethodMode)`| The current `allowedCombinations` that are used by this authentication.|✓|
|`conditionalAccessReferences`|`Collection(Edm.String)`| List of Conditional Access policies IDs that this change will be impacted. These are Conditional Access policies that reference this Authentication Strength.|✓|
|`additionalInformation`|`Edm.String`| Additional information on the implication of the change, for example – lowered the security of the authentication strength. |✓|



#### additionalInformation responses

| Scenario | Method | Code | Message |                                                                                                                |
| -------- | ------ | ---- | ------- |
|Update authentication strength that is referenced by a Conditional Access policy – adding less secure authentication combination | `POST`| `200` | You have lowered the security of the <display Name> authentication strength by adding a lower security combination. This Authentication Strength is referenced by one or more Conditional Access policies. Review conditionalAccessReferences to understand which Conditional Access policies were impacted by this change. To reverse your changes back, use updateAllowedCombinations action with the previousCombinations values.|
|Update authentication strength that is referenced by a Conditional Access policy – removing an authentication combination | `POST`| `200` |You have removed an authentication combination from the <Display Name> authentication strength. This Authentication Strength is referenced by one or more Conditional Access policies. Review conditionalAccessReferences to understand which Conditional Access policies were impacted by this change. To reverse your changes back, use updateAllowedCombinations action with the previousCombinations values.|
|Update authentication strength that is referenced by a Conditional Access policy, where the Conditional Access policy has MFA requirements settings (for example, password change or device registration)| | `POST`| `200` | You have added a single factor authentication combination to the <display Name> authentication strength policy. This Authentication Strength is referenced by one or more Conditional Access policies that require at least Multi-factor authentication. Users will not be able to use single-factor combination to satisfy these Conditional Access policies. Review conditionalAccessReferences to understand which Conditional Access policies were impacted by this change. To reverse your changes back, use updateAllowedCombinations action with the previousCombinations values.|

## Permissions scopes 

### API re-uses existing Graph permissions

|Permissions|Type|Entities/APIs Covered|
|-|-|-|
|`Policy.Read.All`|Delegated|All|
|`Policy.Read.All`|Application-only|All|
|`Policy.Read.AutheticationMethod`|Application-only|All|
|`Policy.ReadWrite.ConditionalAccess`|Application-only|All|
