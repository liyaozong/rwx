package cn.whaleride.utils;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * 密码计算器
 *
 * @author Liyaozong
 * @email 125030963@qq.com
 * @date 2019-05-01 08:10
 */
public class PasswordUtils {
    private static final String SALT = "wi27jx9h1l";

    private static final String ALGORITH_NAME = "md5";

    private static final int HASH_ITERATIONS = 2;

    public static String encrypt(String pwd) {
        String newPassword = new SimpleHash(ALGORITH_NAME, pwd, ByteSource.Util.bytes(SALT),
                HASH_ITERATIONS).toHex();
        return newPassword;
    }

    public static String encrypt(String username, String pwd) {
        String newPassword = new SimpleHash(ALGORITH_NAME, pwd, ByteSource.Util.bytes(username + SALT),
                HASH_ITERATIONS).toHex();
        return newPassword;
    }

    public static void main(String[] args) {
        System.out.println(PasswordUtils.encrypt("admin", "admin"));
    }
}
