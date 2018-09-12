# Microsoft Teams API - Tenant Application Management
A Global Administrator will use cmdlets to create/update/remove tenant apps for the Teams tenant app catalog. Each cmdlet will talk to an MSGraph endpoint which will proxy the calls to MiddleTier. The MSGraph endpoints will be responsible for authentication and passing along the tokens to MiddleTier along with the user supplied app payload.

### DELETE /appCatalogs/teamsApps/{id}
#### Description
Remove a tenant app from your Teams tenant app catalog with the given ID.

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ---------------                        | ----------------------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value          | Required
| ---------     | -------------- | --------
| Authorization | Bearer {token} | ✓

#### Request Body
- None.

#### Response
```
HTTP/1.1 204 No Content
```

#### Example
##### Request
```
DELETE https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
```
##### Response
```
HTTP/1.1 204 No Content
```
#### Usage Tips
The ID to include in this call is the ID returned by making the [Create (POST) call](#post-/appCatalogs/teamsApps). This ID is not the ID in the manifest of the zip app package.

#### Error Codes & Messages
| Operation | Status Code | Error Code      | Error Message
| --------- |------------ | --------------  | --------------
| `DELETE`  | 401         | unauthenticated | Unable to authenticate user
| `DELETE`  | 403         | accessDenied    | User does not have access to the tenant
| `DELETE`  | 404         | itemNotFound    | No app found with Id

#### Known Limitations
The user must use the generated app ID returned by the [Create (POST) call](#post-/appCatalogs/teamsApps) and not the DeveloperProvidedId.

#### Future Extension
None.

