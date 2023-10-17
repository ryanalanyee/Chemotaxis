import javax.swing.*;
import java.awt.*;
import java.util.ArrayList;
import java.util.Random;

class Bacteria {
    int x, y;
    Color color;

    public Bacteria(int x, int y, Color color) {
        this.x = x;
        this.y = y;
        this.color = color;
    }

    public void move() {
        Random rand = new Random();
        int dx = rand.nextInt(11) - 5;
        int dy = rand.nextInt(11) - 5;
        x += dx;
        y += dy;
    }
}

class ChemotaxisSimulation extends JPanel {
    private ArrayList<Bacteria> bacteriaList = new ArrayList<>();

    public ChemotaxisSimulation() {
        for (int i = 0; i < 50; i++) {
            int x = (int) (Math.random() * 800);
            int y = (int) (Math.random() * 600);
            Color color = new Color((int) (Math.random() * 256), (int) (Math.random() * 256), (int) (Math.random() * 256));
            bacteriaList.add(new Bacteria(x, y, color));
        }

        Timer timer = new Timer(100, e -> {
            for (Bacteria bacteria : bacteriaList) {
                bacteria.move();
            }
            repaint();
        });
        timer.start();
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        for (Bacteria bacteria : bacteriaList) {
            g.setColor(bacteria.color);
            g.fillOval(bacteria.x, bacteria.y, 10, 10);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            JFrame frame = new JFrame("Chemotaxis Simulation");
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.getContentPane().add(new ChemotaxisSimulation());
            frame.setSize(800, 600);
            frame.setVisible(true);
        });
    }
}
