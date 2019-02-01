## Creating PATCH requests
When creating PATCH requests to the API, you need to create a new PATCH object that contains only the information you want to update. This should be distinct from any objects you receive from the service from a GET or a POST.

```Java
// The realMe user has an identifier and represents the
// state of the user on the service at the time the user 
// was fetched.
User realMe = graphClient.me().buildRequest().get();

// Do not use the User object returned by the service in
// the update. Always create a patch object to set only 
// the data you want to change.
User patchMe = new User();
patchMe.givenName = "Beth";

// Use the realMe object to identify WHO to patch and use
// the patchMe object to specify WHAT to patch. Set the 
// results to realMe since this patch call returns the 
// updated user.
realMe = graphClient
    .users(realMe.userPrincipalName)
    .buildRequest()
    .patch(patchMe);
```

One reason for this is that an object may contain properties that are read-only and cannot be updated via PATCH. The service may choose not to ignore data that has not changed.

## Setting properties to null
To support PATCH operations involving null values, specify the property name that you want to nullify:

```Java
user
    .additionalDataManager()
    .put("officeLocation", JsonNull.INSTANCE);
```