import java.awt.*;
import java.util.Random;

public class Bacteria {
    private int x;
    private int y;
    private int color; // You can store color as an integer

    public Bacteria(int x, int y) {
        this.x = x;
        this.y = y;
        this.color = generateRandomColor();
    }

    public void move() {
        Random rand = new Random();
        int dx = rand.nextInt(3) - 1; // Random movement in x direction (-1, 0, 1)
        int dy = rand.nextInt(3) - 1; // Random movement in y direction (-1, 0, 1)
        x += dx;
        y += dy;
    }

    public void show(Graphics g) {
        g.setColor(new Color(color));
        g.fillOval(x, y, 10, 10); // Assuming a circular organism
    }

    private int generateRandomColor() {
        Random rand = new Random();
        int r = rand.nextInt(256);
        int g = rand.nextInt(256);
        int b = rand.nextInt(256);
        return new Color(r, g, b).getRGB();
    }
}
