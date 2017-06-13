# problem statement
creates an azure resource group (if it doesn't already exist)

# example usage

> note: in examples, VERSION represents a version of the azure.group.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.group.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.group.create#VERSION
```

## compose

```yaml
run:
  op:
    pkg: { ref: github.com/opspec-pkgs/azure.group.create#VERSION }
    inputs:
      subscriptionId:
      loginId:
      loginSecret:
      location:
      name:
      # begin optional args
      loginTenantId:
      loginType:
      # end optional args
```
