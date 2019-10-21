package cn.whaleride.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * HTTP响应包装器
 *
 * @author Liyaozong
 * @email 125030963@qq.com
 * @date 2019-05-01 08:10
 */
public class R extends HashMap<String, Object> {
    private static final long serialVersionUID = 1L;

    private R() {
        put("code", 0);
        put("message", "请求成功");
    }

    public static R error() {
        return error(500, "未知异常，请联系管理员：18980458521！");
    }

    public static R error(String msg) {
        return error(500, msg);
    }

    public static R error(int code, String msg) {
        R r = new R();
        r.put("code", code);
        r.put("message", msg);
        return r;
    }

    public static R ok() {
        return new R();
    }

    public static R ok(String msg) {
        R r = new R();
        r.put("message", msg);
        return r;
    }

    public static R ok(Map<String, Object> map) {
        R r = new R();
        r.putAll(map);
        return r;
    }

    public R put(String key, Object value) {
        super.put(key, value);
        return this;
    }
}
