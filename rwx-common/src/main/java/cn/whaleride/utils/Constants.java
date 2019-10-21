package cn.whaleride.utils;

/**
 * 系统常量
 *
 * @author Liyaozong
 * @email 125030963@qq.com
 * @date 2019-05-01 08:10
 */
public class Constants {
    /**
     * 演示系统账户
     */
    public static String DEMO_ACCOUNT = "test";

    /**
     * 验证码键值
     */
    public static final String KAPTCHA_SESSION_KEY = "KAPTCHA_SESSION_KEY";
    /**
     * 当前用户菜单树数据
     */
    public static final String MENU_TREE = "MENU_TREE";
    /**
     * 菜单类型
     */
    public enum MenuType {
        /**
         * 目录
         */
        CATALOG(0),
        /**
         * 菜单
         */
        MENU(1),
        /**
         * 按钮
         */
        BUTTON(2);

        private int value;

        private MenuType(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }

    /**
     * 调度任务状态
     */
    public enum ScheduleStatus {
        /**
         * 正常
         */
        NORMAL(0),
        /**
         * 暂停
         */
        PAUSE(1),
        /**
         * 正在运行
         */
        RUNNING(2);

        private int value;

        private ScheduleStatus(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }

    /**
     * Oss云服务商
     */
    public enum OssService {
        /**
         * 七牛云
         */
        QINIU(1),
        /**
         * 阿里云
         */
        ALIYUN(2),
        /**
         * 腾讯云
         */
        QCLOUD(3),
        /**
         * 服务器存储
         */
        DISCK(4);

        private int value;

        private OssService(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }
}
