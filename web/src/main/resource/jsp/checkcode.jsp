<%@ page contentType="image/jpeg"
	import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*"%>
	window.self.location.reload(true);
<%!Color getRandColor(Random random, int fc, int bc) {	// ������Χ��������ɫ
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


	// ���ڴ��д���ͼ��
	int width = 60, height = 20;
	BufferedImage image = new BufferedImage(width, height,
			BufferedImage.TYPE_INT_RGB);

	// ��ȡͼ��������
	Graphics g = image.getGraphics();

	// ���������
	Random random = new Random();

	// �趨����ɫ
	g.setColor(getRandColor(random, 200, 250));
	g.fillRect(0, 0, width, height);

	// ��������
	g.setFont(new Font("Times New Roman", Font.PLAIN, 18));

	g.setColor(getRandColor(random, 160, 200));

	// �������155�������ߣ�ʹͼ���е���֤�벻�ױ���������̽�⵽
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
		// ����֤����ʾ��ͼ����
		g.setColor(new Color(20 + random.nextInt(110), 20 + random
				.nextInt(110), 20 + random.nextInt(110)));// ���ú�����������ɫ��ͬ����������Ϊ����̫�ӽ�������ֻ��ֱ������
		g.drawString(rand, 13 * i + 6, 16);
	}

	// ����֤�����SESSION
	session.setAttribute("ccode", sRand);

	// ͼ����Ч
	g.dispose();

	// ���ͼ��ҳ��
	ImageIO.write(image, "JPEG", response.getOutputStream());
	
	out.clear();
	out = pageContext.pushBody();
%>
