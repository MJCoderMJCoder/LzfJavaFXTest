package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {

    /**
     * start()方法是所有JavaFX应用程序的入口，是必需的；
     * 而当JavaFX应用程序是通过JavaFX Packager工具打包时，main()方法就不是必需的的了；
     * 因为JavaFX Package工具会将JavaFX Launcher嵌入到JAR文件中。
     * 该文件使用FXMLLoader类，该类负责加载FXML源文件sample.fxml并返回结果对象图，继承了javafx.application.Application，
     * 通过stage和scene来定义UI容器，其中Stage是最顶层的javafx容器，Scene则是所有组件的容器
     * ——————————————————————————|
     * Stage javafx.stage(window)|
     * —————Scene javafx.scene   |
     * ——————————StackPane(root) |
     * ——————————Button(btn)     |
     * ——————————————————————————|
     *
     * @param primaryStage
     * @throws Exception
     */
    @Override
    public void start(Stage primaryStage) throws Exception {
        System.out.println(getClass().getResource("sample.fxml"));
        Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        primaryStage.setTitle("Hello World");
        primaryStage.setScene(new Scene(root, 300, 275));
        primaryStage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
