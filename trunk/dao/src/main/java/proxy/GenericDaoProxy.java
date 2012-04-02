package main.java.proxy;

import com.medicalinformation.dbc.DatabaseConnection;

/**
 * @author Administrator
 * 当第一次要使用数据库时，实例化DatabaseConnection对象。
 * 在其他需要的时候再关闭数据库连接（现在还不了解在哪里关闭合适）
 */

/**
 * @author Administrator
 * 此处使用PROXY模式的动机是：对于一个对象进行访问控制的一个原因是为了只有
 * 在我们确实需要这个对象时才对它进行创建和初始化。
 * 这一限制条件意味着，对于每一个开销很大的对象，应该根据需要进行创建（像这里的
 * 数据库连接）。
 */
public class GenericDaoProxy {
	private DatabaseConnection dbc = null;
	
	public DatabaseConnection getDbc() {
		return this.dbc;
	}
	public GenericDaoProxy() {
		if(this.dbc == null) {
			try {
				this.dbc = new DatabaseConnection();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
