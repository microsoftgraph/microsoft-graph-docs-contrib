# External Identity Policy

## Contacts

| Role | Name                             |
| ---- | -------------------------------- |
| PM   | Martha Githui-Bett (mgithuibett) |
| Eng  | Bashir Kunya (bashirkunya)       |

## Scenarios and personas

Identity is undertaking a series of changes to enable more flexible collaboration between users within the AAD ecosystem. Enterprise customers have been seeking updated solutions predominantly within AAD to collaborate across tenant boundaries. The proposed updates will provide administrators new tools and capabilities to permit their users to interact with other users and tenants within AAD while at the same time maintaining operational control over their respective tenants.+

To bolster the story around tenant administrator control over external identities, AAD will enable two new capabilities. First, a new tenant level policy which will form a definitive means to allow or restrict external identities to leave the organization via Microsoft provided self-service controls. When permitted by the administrator, external identities (such as B2B Collaboration and B2B Direct Connect users) will have access to self-service controls via the My\* portal. The second setting is another tenant level policy setting which will form the tenants intent to have their directory become updated when an identity external to the local tenant has been deleted. The setting will inform AAD that cleanup of the external identities’ user information stored within the local tenant should be deleted (or not) when the user is deleted in their home directory.

In this regard, AAD is proposing a new Policy API, available to administrators that allows one or both settings described previously to be configured. Current proposed names:

i) AllowExternalIdentitiesToLeave

ii) allowDeletedIdentitiesDataRemoval

Full spec:

i)<https://microsoft.sharepoint-df.com/:w:/r/teams/IdentityComplexOrg/_layouts/15/Doc.aspx?sourcedoc=%7B948B3ACB-DAFD-41E0-942F-F9736C649C2A%7D&file=PrivacyArchitectureUpdateProposal_v2.docx&action=default&mobileredirect=true>

ii)<https://microsoft.sharepoint-df.com/:w:/r/teams/IdentityComplexOrg/_layouts/15/Doc.aspx?sourcedoc=%7B177B8E54-A87A-4D53-B6EC-3910B8D53376%7D&file=PrivacyProposalForCrossTenantCollaborations.docx&action=default&mobileredirect=true>

### {1}: Get single object external identity policy settings

This should return a single object of the externalIdentitiesPolicy settings for the tenant as specified below.If the policy does not exist it will be created just-in-time.

```HTTP
GET https://graph.microsoft.com/beta/policies/externalIdentitiesPolicy/externalIdentityPolicy

HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/externalIdentitiesPolicy",
    "@odata.type": "microsoft.graph.externalIdentitiesPolicy",
    "id":"externalIdentityPolicy",
    "allowExternalIdentitiesToLeave": true,
    "allowDeletedIdentitiesDataRemoval": true,
    "displayName": "External Identities Policy"
}
```

### {2}: Get an array object of external identity policy settings

This should return an array with one object of externalIdentitiesPolicy settings for the tenant as specified below.If the policy does not exist it will be created just-in-time.

```HTTP
GET https://graph.microsoft.com/beta/policies/externalIdentitiesPolicy

HTTP/1.1 200 OK
"value": [
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/externalIdentitiesPolicy",
    "@odata.type": "microsoft.graph.externalIdentitiesPolicy",
    "id":"externalIdentityPolicy",
    "allowExternalIdentitiesToLeave": true,
    "allowDeletedIdentitiesDataRemoval": true,
    "displayName": "External Identities Policy"
}
]
```

### {3}: Update external identity policy settings with a valid id(externalIdentityPolicy)

This should update the properties successfully.

```HTTP
PATCH https://graph.microsoft.com/beta/policies/externalIdentitiesPolicy/externalIdentityPolicy
{
    "allowExternalIdentitiesToLeave": true,
    "allowDeletedIdentitiesDataRemoval": true,
    "displayName": "External Identities Policy"
}
```

Response: HTTP/1.1 204 (No Content)

### {4}: Update external identity policy settings with invalid id(anyOtherId)

This should fail with an error.

```HTTP
PATCH https://graph.microsoft.com/beta/policies/externalIdentitiesPolicy/anyOtherId
{
    "allowExternalIdentitiesToLeave": true,
    "allowDeletedIdentitiesDataRemoval": true,
    "displayName": "External identity policy"
}
```

Response: HTTP/1.1 400

## Details and schema changes

This `externalIdentitiesPolicy` resource will be a singleton entity to ensure only 1 such policy exists per tenant.

### New entity types

#### externalIdentitiesPolicy

It will be created as an extension of Policy object.
Each tenant has exactly one externalIdentitiesPolicy. This policy may be read and changed. This policy will be stored as externalIdentitiesPolicy, new enum entry in PolicyType definition in AAD.

##### Properties

| Key | Name                                | Type      | Req. | Nav. | Description                                                                                                                                                                                                 |
| :-: | ----------------------------------- | --------- | :--: | :--: | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|  X  | `allowExternalIdentitiesToLeave`    | `boolean` |  ✓   |      | The setting will inform AAD whether allow or restrict external identities to leave the tenant.If set to false, self service is not enabled, and therefore admin will need to manually perform the clean up. |
|  X  | `allowDeletedIdentitiesDataRemoval` | `boolean` |  ✓   |      | The setting will inform AAD that cleanup of the external identities user information stored within the local tenant should be deleted (or not) when the user is deleted in their home directory.            |
|  X  | `displayName`                       | `string`  |  ✓   |      | Contains string data for policy display information.                                                                                                                                                        |

##### Supported functionality

| Operation | Supported | Method   | Success | Notes                                                                                                                                                                             |
| --------- | :-------: | -------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| List      |     X     | `GET`    | `200`   |                                                                                                                                                                                   |
| Get       |     ✓     | `GET`    | `200`   | When a GET is requested to allowExternalIdentitiesToLeave,allowDeletedIdentitiesDataRemoval,displayName properties will be returned.If policy does not exists it will be created. |
| Create    |     X     | `POST`   | `400`   |                                                                                                                                                                                   |
| Update    |     ✓     | `PATCH`  | `204`   | To update the property, PATCH with new properties values. New property value will replace the existing property value.                                                            |
| Delete    |     X     | `DELETE` | `405`   |                                                                                                                                                                                   |

##### Supported query patterns

| Pattern                | Supported | Syntax                                              | Notes |
| ---------------------- | :-------: | --------------------------------------------------- | ----- |
| Server-side pagination |     X     | `@odata.nextLink`                                   |       |
| Filter                 |     X     | `policies/{named}Policies?$filter=propA eq 'value'` |       |

##### CSDL

`externalIdentitiesPolicy`

```xml
<EntityType Name="externalIdentitiesPolicy" baseType="microsoft.graph.entity">
  <Property Name="allowExternalIdentitiesToLeave" Type="Edm.Boolean" Nullable="false"/>
  <Property Name="allowDeletedIdentitiesDataRemoval" Type="Edm.Boolean" Nullable="false"/>
  <Property Name="displayName" Type="Edm.String" />
</EntityType>
```

## Error conditions and messages

| Scenario                                                                                                          | Method | Code | Message                                                                                                        |
| ----------------------------------------------------------------------------------------------------------------- | ------ | ---- | -------------------------------------------------------------------------------------------------------------- |
| Try to update externalIdentitiesPolicy without required permission                                                | PATCH  | 403  | Insufficient privileges to complete the operation                                                              |
| Try to update externalIdentitiesPolicy's boolean typed property value with a string that is not "true" or "false" | PATCH  | 400  | Cannot convert a primitive value to the expected type 'Edm.Boolean'. See the inner exception for more details. |
| Try to delete externalIdentitiesPolicy                                                                            | DELETE | 405  | Deletion of policy type 'externalIdentitiesPolicy' is not supported.                                           |
| Try to create externalIdentitiesPolicy                                                                            | POST   | 400  | Unsupported resource type 'externalIdentitiesPolicy' for operation 'Create'.                                   |

## Permissions scopes

### New permission scopes

| ScopeName                           | DisplayName                                                              | Description                                                                                                    | Type      | Admin Consent? | Entities/APIs covered |
| ----------------------------------- | ------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------- | --------- | -------------- | --------------------- |
| Policy.ReadWrite.ExternalIdentities | Read and write your organization's external identity collabortion policy | Allows the app to read and write your organization's external identity policy on behalf of the signed-in user. | Delegated | No             | PATCH/GET             |

### Actions

| Permission                          | Action    | Description                                                                                                                 |
| ----------------------------------- | --------- | --------------------------------------------------------------------------------------------------------------------------- |
| Policy.ReadWrite.ExternalIdentities | ReadWrite | Allows signed-in user/admin to read and write your organization's external identity policy on behalf of the signed-in user. |

## PowerShell and CLI
