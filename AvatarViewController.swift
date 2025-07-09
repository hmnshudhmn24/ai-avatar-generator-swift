
import UIKit
import CoreML
import Vision

class AvatarViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var generateButton: UIButton!

    var inputImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        generateButton.layer.cornerRadius = 10
    }

    @IBAction func selectImage(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        if let selected = info[.originalImage] as? UIImage {
            imageView.image = selected
            inputImage = selected
        }
    }

    @IBAction func generateAvatar(_ sender: UIButton) {
        guard let image = inputImage else { return }
        generateAvatarFromImage(image)
    }

    func generateAvatarFromImage(_ image: UIImage) {
        // Placeholder logic; in actual app you'd use CoreML Stable Diffusion model here
        let alert = UIAlertController(title: "Avatar Generation", message: "Running avatar generation on device...", preferredStyle: .alert)
        self.present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            alert.dismiss(animated: true)
            self.imageView.image = self.addOverlay(to: image)
        }
    }

    func addOverlay(to image: UIImage) -> UIImage {
        UIGraphicsBeginImageContext(image.size)
        image.draw(at: CGPoint.zero)

        let overlayText = "👤 AI Avatar"
        let attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 36), NSAttributedString.Key.foregroundColor: UIColor.green]
        overlayText.draw(at: CGPoint(x: 20, y: 20), withAttributes: attrs)

        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result ?? image
    }
}
