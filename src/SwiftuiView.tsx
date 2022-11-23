import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { SwiftuiViewProps } from "./SwiftuiView.types";

const NativeView: React.ComponentType<SwiftuiViewProps> =
  requireNativeViewManager("SwiftuiView");

export default function SwiftuiView(props: SwiftuiViewProps) {
  return <NativeView {...props} />;
}
