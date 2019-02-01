# Beta Models
In the [`beta`](https://github.com/microsoftgraph/msgraph-sdk-php/tree/beta) branch of the SDK, you will find the latest models for the beta endpoint (https://graph.microsoft.com/beta). This will allow you to work with Graph entities that are currently still in preview.

*This should not be confused with features that are in beta in the SDK*

## Using the beta models
Beta models use their own namespace to prevent name collision with the v1.0 models:
```php
Microsoft\Graph\Beta\Models
```

To switch from v1.0 models to beta models, simply change your using statement from `Graph\Models` to `Graph\Beta\Models`.

## Support
Because it is actively changing, we do not actively support the `beta` endpoint. However, if you find a bug in the beta models, please still open an [issue](https://github.com/microsoftgraph/msgraph-sdk-php/issues) on the repo. It is likely that the issue will propagate into v1.0 once it is promoted. If the bug is specific to beta, please include the tag `beta`.
