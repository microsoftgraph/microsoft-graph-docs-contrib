# Microsoft Teams API - Tenant Application Management
A Global Administrator will use cmdlets to create/update/remove tenant apps for the Teams tenant app catalog. Each cmdlet will talk to an MSGraph endpoint which will proxy the calls to MiddleTier. The MSGraph endpoints will be responsible for authentication and passing along the tokens to MiddleTier along with the user supplied app payload.

## High-level design for proposed APIs
The design will have MSGraph send the authenticated user's token and app data to the Teams Middle Tier. Middle Tier will then validate and use this information to create, update, or remove a tenant app.

### GET /appCatalogs/teamsApps
#### Description
Get apps from the Teams app catalog. In the future this will include apps from the Teams Store, sideloaded apps as well as apps from the organization's catalog (aka Tenant apps catalog). To get apps from the Tenant app catalog, specify 'Organization' as the distributionMethod.
Get tenant apps from your Teams tenant app catalog.

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ----------------------------------     | -------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value           | Required
| --------------| --------------  | --------
| Authorization | Bearer {token}  | ✓

#### Request Body
- None.

#### Response
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "developerProvidedId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod":"Organization"
    },
    ...
  ]
}
```
The response is a list of [TeamsCatalogApps](#teamscatalogapp).

#### Example
##### Request
```
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps?$filter=id%20eq%20'b1c5353a-7aca-41b3-830f-27d5218fe0e5'
```

##### Response
```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "developerProvidedId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod":"Tenant"
    }
  ]
}
```
The response is a list of [TeamsCatalogApps](#teamscatalogapp).

#### Usage Tips
This endpoint allows a filter to be used on any of the fields of the [TeamsCatalogApp](#teamscatalogapp) object in order to shorten the list of results (as seen in the example above). The allowed filter operations are: Equal, Not-Equal, And, Or, Not. 

#### Error Codes & Messages
| Operation | Status Code | Error Code      | Error Message
| --------- | ----------- | --------------- | --------------
| `GET`     | 401         | unauthenticated | Unable to authenticate user
| `GET`     | 403         | accessDenied    | User does not have access to the tenant

#### Known Limitations
One cannot use filter operations that are not allowed, such as Greater-Than.

#### Future Extension
There is the potential to add further fields to the [TeamsCatalogApp](#teamscatalogapp) object in order to allow the user to filter on other parameters, such as, "all catalog apps with a bot."

