<%@ page contentType="image/jpeg"
	import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*"%>
	window.self.location.reload(true);
<%!Color getRandColor(Random random, int fc, int bc) {	// 给定范围获得随机颜色
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}%>
<%


	// 在内存中创建图像
	int width = 60, height = 20;
	BufferedImage image = new BufferedImage(width, height,
			BufferedImage.TYPE_INT_RGB);

	// 获取图形上下文
	Graphics g = image.getGraphics();

	// 生成随机类
	Random random = new Random();

	// 设定背景色
	g.setColor(getRandColor(random, 200, 250));
	g.fillRect(0, 0, width, height);

	// 设置字体
	g.setFont(new Font("Times New Roman", Font.PLAIN, 18));

	g.setColor(getRandColor(random, 160, 200));

	// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
	for (int i = 0; i < 155; i++) {
		int x = random.nextInt(width);
		int y = random.nextInt(height);
		int xl = random.nextInt(12);
		int yl = random.nextInt(12);
		g.drawLine(x, y, x + xl, y + yl);
	}

	String sRand = "";
	for (int i = 0; i < 4; i++) {
		String rand = String.valueOf(random.nextInt(10));
		sRand += rand;
		// 将认证码显示到图象中
		g.setColor(new Color(20 + random.nextInt(110), 20 + random
				.nextInt(110), 20 + random.nextInt(110)));// 调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
		g.drawString(rand, 13 * i + 6, 16);
	}

	// 将认证码存入SESSION
	session.setAttribute("ccode", sRand);

	// 图象生效
	g.dispose();

	// 输出图象到页面
	ImageIO.write(image, "JPEG", response.getOutputStream());
	
	out.clear();
	out = pageContext.pushBody();
%>
