package ROGLaptopFixingTool.sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;


public class MainPageController {
    @FXML
    Button gotoHelp;
    @FXML
    Button gotoMain;
    @FXML
    Button gotoQQ;
    @FXML
    Button gotoLike;
    @FXML
    Button gotoInstall;
    @FXML
    Button gotoMyAsus;
    @FXML
    Button gotoCPUFix;
    @FXML
    Button goto3ms;
    @FXML
    Button gotoUpdate;
    @FXML
    Button gotoGameVisualFix;
    @FXML
    Button gotoDiskClean;
    @FXML
    Button gotoWifiReset;

    @FXML
    public void setGotoHelp() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("help.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("版本信息");
            anotherStage.setScene(new Scene(anotherRoot, 600, 400));
            anotherStage.show();
            Stage stage = (Stage) gotoHelp.getScene().getWindow();
            stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoMain() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("mainPage.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("ROG工具箱");
            anotherStage.setScene(new Scene(anotherRoot, 600, 510));
            anotherStage.show();
            Stage stage = (Stage) gotoHelp.getScene().getWindow();
            stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoQQ() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("qq.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("关于");
            anotherStage.setScene(new Scene(anotherRoot, 600, 400));
            anotherStage.show();
            Stage stage = (Stage) gotoHelp.getScene().getWindow();
            stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoLike() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("like.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("待定功能");
            anotherStage.setScene(new Scene(anotherRoot, 600, 400));
            anotherStage.show();
            Stage stage = (Stage) gotoHelp.getScene().getWindow();
            stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoInstall() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("install.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("安装奥创驱动");
            anotherStage.setScene(new Scene(anotherRoot, 400, 448));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoMyAsus() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("myAsus.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("安装MyAsus驱动");
            anotherStage.setScene(new Scene(anotherRoot, 400, 250));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoCPUFix() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("cpuFix.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("奥创CPU修复");
            anotherStage.setScene(new Scene(anotherRoot, 400, 375));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGoto3ms() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("3ms.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("屏幕快显修复");
            anotherStage.setScene(new Scene(anotherRoot, 400, 250));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoUpdate() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("update.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("奥创在线检查更新");
            anotherStage.setScene(new Scene(anotherRoot, 400, 250));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoGameVisual() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("gameVisual.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("GameVisual修复");
            anotherStage.setScene(new Scene(anotherRoot, 400, 140));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoDiskClean() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("cleanCache.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("磁盘清理");
            anotherStage.setScene(new Scene(anotherRoot, 400, 250));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setGotoWifiReset() {
        try {
            Parent anotherRoot = FXMLLoader.load(getClass().getResource("internetReset.fxml"));
            Stage anotherStage = new Stage();
            anotherStage.setTitle("网络重置");
            anotherStage.setScene(new Scene(anotherRoot, 400, 250));
            anotherStage.show();
            //Stage stage = (Stage) gotoHelp.getScene().getWindow();
            //stage.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
