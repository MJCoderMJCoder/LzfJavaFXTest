package ROGLaptopFixingTool.sample;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;

public class CleanCacheController {
    @FXML
    Button install;

    public void install() {
        //String path = this.getClass().getProtectionDomain().getCodeSource().getLocation().getPath().substring(1);
        //System.out.println(path);
        //System.out.println(path+"sample/program/nircmd.exe elevate "+path+"sample/program/cleanCache.bat");
        Runtime rt = Runtime.getRuntime(); //Runtime.getRuntime()返回当前应用程序的Runtime对象
        Process ps = null;  //Process可以控制该子进程的执行或获取该子进程的信息。
//        URL fileURL = getClass().getResource("program/nircmd.exe");
        try {
            ps = rt.exec("src/sample/program/nircmd.exe elevate src\\sample\\program\\cleanCache.bat");  //该对象的exec()方法指示Java虚拟机创建一个子进程执行指定的可执行程序，并返回与该子进程对应的Process对象实例。
//            ps = rt.exec("explorer");  //打开资源管理器
//            ps = rt.exec("calc");  //该对象的exec()方法指示Java虚拟机创建一个子进程执行指定的可执行程序，并返回与该子进程对应的Process对象实例。
//            ps = rt.exec("notepad");  //该对象的exec()方法指示Java虚拟机创建一个子进程执行指定的可执行程序，并返回与该子进程对应的Process对象实例。
//            ps = rt.exec(fileURL.getPath().substring(1));
            ps.waitFor();  //等待子进程完成再往下执行。
        } catch (IOException e1) {
            e1.printStackTrace();
        } catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        int i = ps.exitValue();  //接收执行完毕的返回值
        if (i == 0) {
            System.out.println("执行完成.");
        } else {
            System.out.println("执行失败.");
        }

        ps.destroy();  //销毁子进程
        ps = null;
    }

}
