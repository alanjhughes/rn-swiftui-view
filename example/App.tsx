import { Dimensions, StyleSheet, View } from "react-native";
import { SwiftuiView } from "swiftui-view";

const { width, height } = Dimensions.get("window");

export default function App() {
  return (
    <View style={styles.container}>
      <SwiftuiView style={{ width, height }} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },
});
