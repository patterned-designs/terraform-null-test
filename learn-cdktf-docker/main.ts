import { App } from "cdktf";
import { Construct } from "constructs";
import {
  TFModuleStack,
  TFModuleVariable,
  TFModuleOutput,
  ProviderRequirement,
} from "@cdktf/tf-module-stack";
// import { resource as Resource } from "@cdktf/provider-null";

class MyAwesomeModule extends TFModuleStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    new ProviderRequirement(this, "null", "~> 2.0");
    // const resource = new Resource(scope, "myid", {});

    new TFModuleVariable(this, "my_var", {
      type: "string",
      description: "A variable",
      default: "default",
    });

    new TFModuleOutput(this, "my_output", {
      value: "123",
    });
  }
}

const app = new App();
new MyAwesomeModule(app, "my-awesome-module");
app.synth();