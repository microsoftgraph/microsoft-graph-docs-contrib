---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

Get-MgDirectoryFederationConfiguration -IdentityProviderBaseId $identityProviderBaseId -Filter "domains/any(x: x/id eq 'contoso.com')" 

```